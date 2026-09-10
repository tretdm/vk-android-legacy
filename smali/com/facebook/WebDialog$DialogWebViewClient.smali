.class Lcom/facebook/WebDialog$DialogWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "WebDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/WebDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DialogWebViewClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/WebDialog;


# direct methods
.method private constructor <init>(Lcom/facebook/WebDialog;)V
    .locals 0

    .prologue
    .line 394
    iput-object p1, p0, Lcom/facebook/WebDialog$DialogWebViewClient;->this$0:Lcom/facebook/WebDialog;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/WebDialog;Lcom/facebook/WebDialog$DialogWebViewClient;)V
    .locals 0

    .prologue
    .line 394
    invoke-direct {p0, p1}, Lcom/facebook/WebDialog$DialogWebViewClient;-><init>(Lcom/facebook/WebDialog;)V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 477
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 478
    iget-object v0, p0, Lcom/facebook/WebDialog$DialogWebViewClient;->this$0:Lcom/facebook/WebDialog;

    invoke-static {v0}, Lcom/facebook/WebDialog;->access$3(Lcom/facebook/WebDialog;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 479
    iget-object v0, p0, Lcom/facebook/WebDialog$DialogWebViewClient;->this$0:Lcom/facebook/WebDialog;

    invoke-static {v0}, Lcom/facebook/WebDialog;->access$4(Lcom/facebook/WebDialog;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 485
    :cond_0
    iget-object v0, p0, Lcom/facebook/WebDialog$DialogWebViewClient;->this$0:Lcom/facebook/WebDialog;

    invoke-static {v0}, Lcom/facebook/WebDialog;->access$5(Lcom/facebook/WebDialog;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 486
    iget-object v0, p0, Lcom/facebook/WebDialog$DialogWebViewClient;->this$0:Lcom/facebook/WebDialog;

    invoke-static {v0}, Lcom/facebook/WebDialog;->access$6(Lcom/facebook/WebDialog;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 487
    iget-object v0, p0, Lcom/facebook/WebDialog$DialogWebViewClient;->this$0:Lcom/facebook/WebDialog;

    invoke-static {v0}, Lcom/facebook/WebDialog;->access$7(Lcom/facebook/WebDialog;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 488
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 469
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 470
    iget-object v0, p0, Lcom/facebook/WebDialog$DialogWebViewClient;->this$0:Lcom/facebook/WebDialog;

    invoke-static {v0}, Lcom/facebook/WebDialog;->access$3(Lcom/facebook/WebDialog;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 471
    iget-object v0, p0, Lcom/facebook/WebDialog$DialogWebViewClient;->this$0:Lcom/facebook/WebDialog;

    invoke-static {v0}, Lcom/facebook/WebDialog;->access$4(Lcom/facebook/WebDialog;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 473
    :cond_0
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    .prologue
    .line 448
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 449
    iget-object v0, p0, Lcom/facebook/WebDialog$DialogWebViewClient;->this$0:Lcom/facebook/WebDialog;

    new-instance v1, Lcom/facebook/FacebookDialogException;

    invoke-direct {v1, p3, p2, p4}, Lcom/facebook/FacebookDialogException;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-static {v0, v1}, Lcom/facebook/WebDialog;->access$2(Lcom/facebook/WebDialog;Ljava/lang/Throwable;)V

    .line 450
    iget-object v0, p0, Lcom/facebook/WebDialog$DialogWebViewClient;->this$0:Lcom/facebook/WebDialog;

    invoke-virtual {v0}, Lcom/facebook/WebDialog;->dismiss()V

    .line 451
    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 4
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "handler"    # Landroid/webkit/SslErrorHandler;
    .param p3, "error"    # Landroid/net/http/SslError;

    .prologue
    const/4 v3, 0x0

    .line 458
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    .line 460
    iget-object v0, p0, Lcom/facebook/WebDialog$DialogWebViewClient;->this$0:Lcom/facebook/WebDialog;

    new-instance v1, Lcom/facebook/FacebookDialogException;

    const/16 v2, -0xb

    invoke-direct {v1, v3, v2, v3}, Lcom/facebook/FacebookDialogException;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-static {v0, v1}, Lcom/facebook/WebDialog;->access$2(Lcom/facebook/WebDialog;Ljava/lang/Throwable;)V

    .line 461
    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->cancel()V

    .line 462
    iget-object v0, p0, Lcom/facebook/WebDialog$DialogWebViewClient;->this$0:Lcom/facebook/WebDialog;

    invoke-virtual {v0}, Lcom/facebook/WebDialog;->dismiss()V

    .line 464
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 12
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    .line 398
    const-string v8, "fbconnect://success"

    invoke-virtual {p2, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 399
    invoke-static {p2}, Lcom/facebook/WebDialog;->parseUrl(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    .line 401
    .local v6, "values":Landroid/os/Bundle;
    const-string v8, "error"

    invoke-virtual {v6, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 402
    .local v0, "error":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 403
    const-string v8, "error_type"

    invoke-virtual {v6, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 406
    :cond_0
    const-string v8, "error_msg"

    invoke-virtual {v6, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 407
    .local v3, "errorMessage":Ljava/lang/String;
    if-nez v3, :cond_1

    .line 408
    const-string v8, "error_description"

    invoke-virtual {v6, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 410
    :cond_1
    const-string v8, "error_code"

    invoke-virtual {v6, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 411
    .local v2, "errorCodeString":Ljava/lang/String;
    const/4 v1, -0x1

    .line 412
    .local v1, "errorCode":I
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_2

    .line 414
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 420
    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_5

    :cond_3
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_5

    :cond_4
    const/4 v8, -0x1

    if-ne v1, v8, :cond_5

    .line 421
    iget-object v8, p0, Lcom/facebook/WebDialog$DialogWebViewClient;->this$0:Lcom/facebook/WebDialog;

    invoke-static {v8, v6}, Lcom/facebook/WebDialog;->access$0(Lcom/facebook/WebDialog;Landroid/os/Bundle;)V

    .line 430
    :goto_1
    iget-object v8, p0, Lcom/facebook/WebDialog$DialogWebViewClient;->this$0:Lcom/facebook/WebDialog;

    invoke-virtual {v8}, Lcom/facebook/WebDialog;->dismiss()V

    .line 442
    .end local v0    # "error":Ljava/lang/String;
    .end local v1    # "errorCode":I
    .end local v2    # "errorCodeString":Ljava/lang/String;
    .end local v3    # "errorMessage":Ljava/lang/String;
    .end local v6    # "values":Landroid/os/Bundle;
    :goto_2
    return v7

    .line 415
    .restart local v0    # "error":Ljava/lang/String;
    .restart local v1    # "errorCode":I
    .restart local v2    # "errorCodeString":Ljava/lang/String;
    .restart local v3    # "errorMessage":Ljava/lang/String;
    .restart local v6    # "values":Landroid/os/Bundle;
    :catch_0
    move-exception v4

    .line 416
    .local v4, "ex":Ljava/lang/NumberFormatException;
    const/4 v1, -0x1

    goto :goto_0

    .line 422
    .end local v4    # "ex":Ljava/lang/NumberFormatException;
    :cond_5
    if-eqz v0, :cond_7

    const-string v8, "access_denied"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 423
    const-string v8, "OAuthAccessDeniedException"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 424
    :cond_6
    iget-object v8, p0, Lcom/facebook/WebDialog$DialogWebViewClient;->this$0:Lcom/facebook/WebDialog;

    invoke-static {v8}, Lcom/facebook/WebDialog;->access$1(Lcom/facebook/WebDialog;)V

    goto :goto_1

    .line 426
    :cond_7
    new-instance v5, Lcom/facebook/FacebookRequestError;

    invoke-direct {v5, v1, v0, v3}, Lcom/facebook/FacebookRequestError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 427
    .local v5, "requestError":Lcom/facebook/FacebookRequestError;
    iget-object v8, p0, Lcom/facebook/WebDialog$DialogWebViewClient;->this$0:Lcom/facebook/WebDialog;

    new-instance v9, Lcom/facebook/FacebookServiceException;

    invoke-direct {v9, v5, v3}, Lcom/facebook/FacebookServiceException;-><init>(Lcom/facebook/FacebookRequestError;Ljava/lang/String;)V

    invoke-static {v8, v9}, Lcom/facebook/WebDialog;->access$2(Lcom/facebook/WebDialog;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 432
    .end local v0    # "error":Ljava/lang/String;
    .end local v1    # "errorCode":I
    .end local v2    # "errorCodeString":Ljava/lang/String;
    .end local v3    # "errorMessage":Ljava/lang/String;
    .end local v5    # "requestError":Lcom/facebook/FacebookRequestError;
    .end local v6    # "values":Landroid/os/Bundle;
    :cond_8
    const-string v8, "fbconnect://cancel"

    invoke-virtual {p2, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 433
    iget-object v8, p0, Lcom/facebook/WebDialog$DialogWebViewClient;->this$0:Lcom/facebook/WebDialog;

    invoke-static {v8}, Lcom/facebook/WebDialog;->access$1(Lcom/facebook/WebDialog;)V

    .line 434
    iget-object v8, p0, Lcom/facebook/WebDialog$DialogWebViewClient;->this$0:Lcom/facebook/WebDialog;

    invoke-virtual {v8}, Lcom/facebook/WebDialog;->dismiss()V

    goto :goto_2

    .line 436
    :cond_9
    const-string v8, "touch"

    invoke-virtual {p2, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 437
    const/4 v7, 0x0

    goto :goto_2

    .line 440
    :cond_a
    iget-object v8, p0, Lcom/facebook/WebDialog$DialogWebViewClient;->this$0:Lcom/facebook/WebDialog;

    invoke-virtual {v8}, Lcom/facebook/WebDialog;->getContext()Landroid/content/Context;

    move-result-object v8

    .line 441
    new-instance v9, Landroid/content/Intent;

    const-string v10, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 440
    invoke-virtual {v8, v9}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_2
.end method
