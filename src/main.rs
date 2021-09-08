#[tokio::main]
async fn main() {
    let resp = reqwest::get("https://httpbin.org/anything")
        .await
        .expect("request failed")
        .text()
        .await
        .expect("failed to read response body as string");

    println!("{}", resp);
}
