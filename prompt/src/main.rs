use chrono::Local;
use std::env::consts::{ARCH, OS};
use std::env::var;

fn main() {
    let user = var("USER").unwrap_or("unknown".to_string());
    let time = Local::now();
    println!(
        "%F{{yellow}}{} %F{{blue}}{} %F{{purple}}{} {}",
        time.format("%I:%M:%S").to_string(),
        user,
        OS,
        ARCH,
    );
    print!(
        "%F{{white}}└──┤{} %F{{blue}}{} ",
        {
            let pwd = var("PWD")
                .unwrap_or("unknown".to_string())
                .replace(&format!("/home/{}", user), "~");
            if let Some(pwd) = pwd.strip_prefix("~/Projects/") {
                format!("%F{{blue}}{}%F{{white}}:%F{{red}}{}", "dev", pwd)
            } else {
                format!("host:%F{{red}}{}", pwd)
            }
        },
        "λ"
    );
}
