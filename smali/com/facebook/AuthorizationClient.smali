.class public Lcom/facebook/AuthorizationClient;
.super Ljava/lang/Object;
.source "AuthorizationClient.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/AuthorizationClient$AuthDialogBuilder;,
        Lcom/facebook/AuthorizationClient$AuthHandler;,
        Lcom/facebook/AuthorizationClient$AuthorizationRequest;,
        Lcom/facebook/AuthorizationClient$BackgroundProcessingListener;,
        Lcom/facebook/AuthorizationClient$GetTokenAuthHandler;,
        Lcom/facebook/AuthorizationClient$KatanaAuthHandler;,
        Lcom/facebook/AuthorizationClient$KatanaLoginDialogAuthHandler;,
        Lcom/facebook/AuthorizationClient$KatanaProxyAuthHandler;,
        Lcom/facebook/AuthorizationClient$OnCompletedListener;,
        Lcom/facebook/AuthorizationClient$Result;,
        Lcom/facebook/AuthorizationClient$StartActivityDelegate;,
        Lcom/facebook/AuthorizationClient$WebViewAuthHandler;
    }
.end annotation


# static fields
.field private static final ACCESS_TOKEN:Ljava/lang/String; = "com.facebook.platform.extra.ACCESS_TOKEN"

.field public static final BATCHED_REST_METHOD_URL_BASE:Ljava/lang/String; = "method/"

.field private static final DIALOG_AUTHORITY_FORMAT:Ljava/lang/String; = "m.%s"

.field public static final DIALOG_PARAM_ACCESS_TOKEN:Ljava/lang/String; = "access_token"

.field public static final DIALOG_PARAM_APP_ID:Ljava/lang/String; = "app_id"

.field public static final DIALOG_PARAM_CLIENT_ID:Ljava/lang/String; = "client_id"

.field public static final DIALOG_PARAM_DISPLAY:Ljava/lang/String; = "display"

.field public static final DIALOG_PARAM_E2E:Ljava/lang/String; = "e2e"

.field public static final DIALOG_PARAM_REDIRECT_URI:Ljava/lang/String; = "redirect_uri"

.field public static final DIALOG_PARAM_SCOPE:Ljava/lang/String; = "scope"

.field public static final DIALOG_PARAM_TYPE:Ljava/lang/String; = "type"

.field public static final DIALOG_PATH:Ljava/lang/String; = "dialog/"

.field static final EVENT_EXTRAS_APP_CALL_ID:Ljava/lang/String; = "call_id"

.field static final EVENT_EXTRAS_DEFAULT_AUDIENCE:Ljava/lang/String; = "default_audience"

.field static final EVENT_EXTRAS_IS_LEGACY:Ljava/lang/String; = "is_legacy"

.field static final EVENT_EXTRAS_LOGIN_BEHAVIOR:Ljava/lang/String; = "login_behavior"

.field static final EVENT_EXTRAS_MISSING_INTERNET_PERMISSION:Ljava/lang/String; = "no_internet_permission"

.field static final EVENT_EXTRAS_NEW_PERMISSIONS:Ljava/lang/String; = "new_permissions"

.field static final EVENT_EXTRAS_NOT_TRIED:Ljava/lang/String; = "not_tried"

.field static final EVENT_EXTRAS_PERMISSIONS:Ljava/lang/String; = "permissions"

.field static final EVENT_EXTRAS_PROTOCOL_VERSION:Ljava/lang/String; = "protocol_version"

.field static final EVENT_EXTRAS_REQUEST_CODE:Ljava/lang/String; = "request_code"

.field static final EVENT_EXTRAS_SERVICE_DISABLED:Ljava/lang/String; = "service_disabled"

.field static final EVENT_EXTRAS_TRY_LEGACY:Ljava/lang/String; = "try_legacy"

.field static final EVENT_EXTRAS_TRY_LOGIN_ACTIVITY:Ljava/lang/String; = "try_login_activity"

.field static final EVENT_EXTRAS_WRITE_PRIVACY:Ljava/lang/String; = "write_privacy"

.field static final EVENT_NAME_LOGIN_COMPLETE:Ljava/lang/String; = "fb_mobile_login_complete"

.field private static final EVENT_NAME_LOGIN_METHOD_COMPLETE:Ljava/lang/String; = "fb_mobile_login_method_complete"

.field private static final EVENT_NAME_LOGIN_METHOD_START:Ljava/lang/String; = "fb_mobile_login_method_start"

.field static final EVENT_NAME_LOGIN_START:Ljava/lang/String; = "fb_mobile_login_start"

.field static final EVENT_PARAM_AUTH_LOGGER_ID:Ljava/lang/String; = "0_auth_logger_id"

.field static final EVENT_PARAM_ERROR_CODE:Ljava/lang/String; = "4_error_code"

.field static final EVENT_PARAM_ERROR_MESSAGE:Ljava/lang/String; = "5_error_message"

.field static final EVENT_PARAM_EXTRAS:Ljava/lang/String; = "6_extras"

.field static final EVENT_PARAM_LOGIN_RESULT:Ljava/lang/String; = "2_result"

.field static final EVENT_PARAM_METHOD:Ljava/lang/String; = "3_method"

.field private static final EVENT_PARAM_METHOD_RESULT_SKIPPED:Ljava/lang/String; = "skipped"

.field static final EVENT_PARAM_TIMESTAMP:Ljava/lang/String; = "1_timestamp_ms"

.field private static final GRAPH_URL_FORMAT:Ljava/lang/String; = "https://graph.%s"

.field private static final REST_URL_FORMAT:Ljava/lang/String; = "https://api.%s/method"

.field private static final TAG:Ljava/lang/String; = "Facebook-AuthorizationClient"

.field private static final WEB_VIEW_AUTH_HANDLER_STORE:Ljava/lang/String; = "com.facebook.AuthorizationClient.WebViewAuthHandler.TOKEN_STORE_KEY"

.field private static final WEB_VIEW_AUTH_HANDLER_TOKEN_KEY:Ljava/lang/String; = "TOKEN"

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field transient backgroundProcessingListener:Lcom/facebook/AuthorizationClient$BackgroundProcessingListener;

.field transient checkedInternetPermission:Z

.field transient context:Landroid/content/Context;

.field currentHandler:Lcom/facebook/AuthorizationClient$AuthHandler;

.field handlersToTry:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/AuthorizationClient$AuthHandler;",
            ">;"
        }
    .end annotation
.end field

.field loggingExtras:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field transient onCompletedListener:Lcom/facebook/AuthorizationClient$OnCompletedListener;

.field pendingRequest:Lcom/facebook/AuthorizationClient$AuthorizationRequest;

.field transient startActivityDelegate:Lcom/facebook/AuthorizationClient$StartActivityDelegate;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0()Ljava/lang/String;
    .locals 1

    .prologue
    .line 988
    invoke-static {}, Lcom/facebook/AuthorizationClient;->getE2E()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1(Lcom/facebook/AuthorizationClient;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 997
    invoke-direct {p0, p1, p2}, Lcom/facebook/AuthorizationClient;->logWebLoginCompleted(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2(Lcom/facebook/AuthorizationClient;)V
    .locals 0

    .prologue
    .line 475
    invoke-direct {p0}, Lcom/facebook/AuthorizationClient;->notifyBackgroundProcessingStart()V

    return-void
.end method

.method static synthetic access$3(Lcom/facebook/AuthorizationClient;)V
    .locals 0

    .prologue
    .line 481
    invoke-direct {p0}, Lcom/facebook/AuthorizationClient;->notifyBackgroundProcessingStop()V

    return-void
.end method

.method private addLoggingExtra(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "accumulate"    # Z

    .prologue
    .line 265
    iget-object v0, p0, Lcom/facebook/AuthorizationClient;->loggingExtras:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 266
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/AuthorizationClient;->loggingExtras:Ljava/util/Map;

    .line 268
    :cond_0
    iget-object v0, p0, Lcom/facebook/AuthorizationClient;->loggingExtras:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p3, :cond_1

    .line 269
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/facebook/AuthorizationClient;->loggingExtras:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 271
    :cond_1
    iget-object v0, p0, Lcom/facebook/AuthorizationClient;->loggingExtras:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    return-void
.end method

.method private completeWithFailure()V
    .locals 3

    .prologue
    .line 261
    iget-object v0, p0, Lcom/facebook/AuthorizationClient;->pendingRequest:Lcom/facebook/AuthorizationClient$AuthorizationRequest;

    const-string v1, "Login attempt failed."

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/facebook/AuthorizationClient$Result;->createErrorResult(Lcom/facebook/AuthorizationClient$AuthorizationRequest;Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/AuthorizationClient$Result;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/AuthorizationClient;->complete(Lcom/facebook/AuthorizationClient$Result;)V

    .line 262
    return-void
.end method

.method private static getE2E()Ljava/lang/String;
    .locals 4

    .prologue
    .line 989
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 991
    .local v0, "e2e":Lorg/json/JSONObject;
    :try_start_0
    const-string v1, "init"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 994
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 992
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private getHandlerTypes(Lcom/facebook/AuthorizationClient$AuthorizationRequest;)Ljava/util/List;
    .locals 2
    .param p1, "request"    # Lcom/facebook/AuthorizationClient$AuthorizationRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/AuthorizationClient$AuthorizationRequest;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/AuthorizationClient$AuthHandler;",
            ">;"
        }
    .end annotation

    .prologue
    .line 202
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 206
    .local v0, "handlers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/AuthorizationClient$AuthHandler;>;"
    invoke-virtual {p1}, Lcom/facebook/AuthorizationClient$AuthorizationRequest;->isLegacy()Z

    move-result v1

    if-nez v1, :cond_0

    .line 207
    new-instance v1, Lcom/facebook/AuthorizationClient$GetTokenAuthHandler;

    invoke-direct {v1, p0}, Lcom/facebook/AuthorizationClient$GetTokenAuthHandler;-><init>(Lcom/facebook/AuthorizationClient;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 208
    new-instance v1, Lcom/facebook/AuthorizationClient$KatanaLoginDialogAuthHandler;

    invoke-direct {v1, p0}, Lcom/facebook/AuthorizationClient$KatanaLoginDialogAuthHandler;-><init>(Lcom/facebook/AuthorizationClient;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 210
    :cond_0
    new-instance v1, Lcom/facebook/AuthorizationClient$KatanaProxyAuthHandler;

    invoke-direct {v1, p0}, Lcom/facebook/AuthorizationClient$KatanaProxyAuthHandler;-><init>(Lcom/facebook/AuthorizationClient;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 214
    new-instance v1, Lcom/facebook/AuthorizationClient$WebViewAuthHandler;

    invoke-direct {v1, p0}, Lcom/facebook/AuthorizationClient$WebViewAuthHandler;-><init>(Lcom/facebook/AuthorizationClient;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 217
    return-object v0
.end method

.method public static isNullOrEmpty(Ljava/lang/Object;)Z
    .locals 3
    .param p0, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 572
    if-nez p0, :cond_1

    .line 574
    :cond_0
    :goto_0
    return v0

    .line 573
    :cond_1
    instance-of v2, p0, Ljava/util/List;

    if-eqz v2, :cond_2

    check-cast p0, Ljava/util/List;

    .end local p0    # "o":Ljava/lang/Object;
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 574
    .restart local p0    # "o":Ljava/lang/Object;
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private logAuthorizationMethodComplete(Ljava/lang/String;Lcom/facebook/AuthorizationClient$Result;Ljava/util/Map;)V
    .locals 6
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "result"    # Lcom/facebook/AuthorizationClient$Result;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/facebook/AuthorizationClient$Result;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 494
    .local p3, "loggingExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p2, Lcom/facebook/AuthorizationClient$Result;->code:Lcom/facebook/AuthorizationClient$Result$Code;

    invoke-virtual {v0}, Lcom/facebook/AuthorizationClient$Result$Code;->getLoggingValue()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p2, Lcom/facebook/AuthorizationClient$Result;->errorMessage:Ljava/lang/String;

    iget-object v4, p2, Lcom/facebook/AuthorizationClient$Result;->errorCode:Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/facebook/AuthorizationClient;->logAuthorizationMethodComplete(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 496
    return-void
.end method

.method private logAuthorizationMethodComplete(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 5
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "result"    # Ljava/lang/String;
    .param p3, "errorMessage"    # Ljava/lang/String;
    .param p4, "errorCode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 500
    .local p5, "loggingExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 501
    .local v0, "bundle":Landroid/os/Bundle;
    iget-object v2, p0, Lcom/facebook/AuthorizationClient;->pendingRequest:Lcom/facebook/AuthorizationClient$AuthorizationRequest;

    if-nez v2, :cond_1

    .line 503
    const-string v2, ""

    invoke-static {v2}, Lcom/facebook/AuthorizationClient;->newAuthorizationLoggingBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 504
    const-string v2, "2_result"

    sget-object v3, Lcom/facebook/AuthorizationClient$Result$Code;->ERROR:Lcom/facebook/AuthorizationClient$Result$Code;

    invoke-virtual {v3}, Lcom/facebook/AuthorizationClient$Result$Code;->getLoggingValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 505
    const-string v2, "5_error_message"

    .line 506
    const-string v3, "Unexpected call to logAuthorizationMethodComplete with null pendingRequest."

    .line 505
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    :cond_0
    :goto_0
    const-string v2, "3_method"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 524
    const-string v2, "1_timestamp_ms"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 525
    return-void

    .line 508
    :cond_1
    iget-object v2, p0, Lcom/facebook/AuthorizationClient;->pendingRequest:Lcom/facebook/AuthorizationClient$AuthorizationRequest;

    invoke-virtual {v2}, Lcom/facebook/AuthorizationClient$AuthorizationRequest;->getAuthId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/AuthorizationClient;->newAuthorizationLoggingBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 509
    if-eqz p2, :cond_2

    .line 510
    const-string v2, "2_result"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    :cond_2
    if-eqz p3, :cond_3

    .line 513
    const-string v2, "5_error_message"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 515
    :cond_3
    if-eqz p4, :cond_4

    .line 516
    const-string v2, "4_error_code"

    invoke-virtual {v0, v2, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    :cond_4
    if-eqz p5, :cond_0

    invoke-interface {p5}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 519
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p5}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 520
    .local v1, "jsonObject":Lorg/json/JSONObject;
    const-string v2, "6_extras"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private logAuthorizationMethodStart(Ljava/lang/String;)V
    .locals 4
    .param p1, "method"    # Ljava/lang/String;

    .prologue
    .line 488
    iget-object v1, p0, Lcom/facebook/AuthorizationClient;->pendingRequest:Lcom/facebook/AuthorizationClient$AuthorizationRequest;

    invoke-virtual {v1}, Lcom/facebook/AuthorizationClient$AuthorizationRequest;->getAuthId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/AuthorizationClient;->newAuthorizationLoggingBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 489
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "1_timestamp_ms"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 490
    const-string v1, "3_method"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    return-void
.end method

.method private logWebLoginCompleted(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "applicationId"    # Ljava/lang/String;
    .param p2, "e2e"    # Ljava/lang/String;

    .prologue
    .line 1006
    return-void
.end method

.method static newAuthorizationLoggingBundle(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 4
    .param p0, "authLoggerId"    # Ljava/lang/String;

    .prologue
    .line 529
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 530
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "1_timestamp_ms"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 531
    const-string v1, "0_auth_logger_id"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    const-string v1, "3_method"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 533
    const-string v1, "2_result"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 534
    const-string v1, "5_error_message"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 535
    const-string v1, "4_error_code"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 536
    const-string v1, "6_extras"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 537
    return-object v0
.end method

.method private notifyBackgroundProcessingStart()V
    .locals 1

    .prologue
    .line 476
    iget-object v0, p0, Lcom/facebook/AuthorizationClient;->backgroundProcessingListener:Lcom/facebook/AuthorizationClient$BackgroundProcessingListener;

    if-eqz v0, :cond_0

    .line 477
    iget-object v0, p0, Lcom/facebook/AuthorizationClient;->backgroundProcessingListener:Lcom/facebook/AuthorizationClient$BackgroundProcessingListener;

    invoke-interface {v0}, Lcom/facebook/AuthorizationClient$BackgroundProcessingListener;->onBackgroundProcessingStarted()V

    .line 479
    :cond_0
    return-void
.end method

.method private notifyBackgroundProcessingStop()V
    .locals 1

    .prologue
    .line 482
    iget-object v0, p0, Lcom/facebook/AuthorizationClient;->backgroundProcessingListener:Lcom/facebook/AuthorizationClient$BackgroundProcessingListener;

    if-eqz v0, :cond_0

    .line 483
    iget-object v0, p0, Lcom/facebook/AuthorizationClient;->backgroundProcessingListener:Lcom/facebook/AuthorizationClient$BackgroundProcessingListener;

    invoke-interface {v0}, Lcom/facebook/AuthorizationClient$BackgroundProcessingListener;->onBackgroundProcessingStopped()V

    .line 485
    :cond_0
    return-void
.end method

.method private notifyOnCompleteListener(Lcom/facebook/AuthorizationClient$Result;)V
    .locals 1
    .param p1, "outcome"    # Lcom/facebook/AuthorizationClient$Result;

    .prologue
    .line 470
    iget-object v0, p0, Lcom/facebook/AuthorizationClient;->onCompletedListener:Lcom/facebook/AuthorizationClient$OnCompletedListener;

    if-eqz v0, :cond_0

    .line 471
    iget-object v0, p0, Lcom/facebook/AuthorizationClient;->onCompletedListener:Lcom/facebook/AuthorizationClient$OnCompletedListener;

    invoke-interface {v0, p1}, Lcom/facebook/AuthorizationClient$OnCompletedListener;->onCompleted(Lcom/facebook/AuthorizationClient$Result;)V

    .line 473
    :cond_0
    return-void
.end method


# virtual methods
.method public authorize(Lcom/facebook/AuthorizationClient$AuthorizationRequest;)V
    .locals 2
    .param p1, "request"    # Lcom/facebook/AuthorizationClient$AuthorizationRequest;

    .prologue
    .line 156
    if-nez p1, :cond_1

    .line 171
    :cond_0
    :goto_0
    return-void

    .line 160
    :cond_1
    iget-object v0, p0, Lcom/facebook/AuthorizationClient;->pendingRequest:Lcom/facebook/AuthorizationClient$AuthorizationRequest;

    if-eqz v0, :cond_2

    .line 161
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Attempted to authorize while a request is pending."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 164
    :cond_2
    invoke-virtual {p1}, Lcom/facebook/AuthorizationClient$AuthorizationRequest;->needsNewTokenValidation()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/facebook/AuthorizationClient;->checkInternetPermission()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    :cond_3
    iput-object p1, p0, Lcom/facebook/AuthorizationClient;->pendingRequest:Lcom/facebook/AuthorizationClient$AuthorizationRequest;

    .line 169
    invoke-direct {p0, p1}, Lcom/facebook/AuthorizationClient;->getHandlerTypes(Lcom/facebook/AuthorizationClient$AuthorizationRequest;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/AuthorizationClient;->handlersToTry:Ljava/util/List;

    .line 170
    invoke-virtual {p0}, Lcom/facebook/AuthorizationClient;->tryNextHandler()V

    goto :goto_0
.end method

.method cancelCurrentHandler()V
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/facebook/AuthorizationClient;->currentHandler:Lcom/facebook/AuthorizationClient$AuthHandler;

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/facebook/AuthorizationClient;->currentHandler:Lcom/facebook/AuthorizationClient$AuthHandler;

    invoke-virtual {v0}, Lcom/facebook/AuthorizationClient$AuthHandler;->cancel()V

    .line 192
    :cond_0
    return-void
.end method

.method checkInternetPermission()Z
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 221
    iget-boolean v4, p0, Lcom/facebook/AuthorizationClient;->checkedInternetPermission:Z

    if-eqz v4, :cond_0

    .line 235
    :goto_0
    return v3

    .line 225
    :cond_0
    const-string v4, "android.permission.INTERNET"

    invoke-virtual {p0, v4}, Lcom/facebook/AuthorizationClient;->checkPermission(Ljava/lang/String;)I

    move-result v2

    .line 226
    .local v2, "permissionCheck":I
    if-eqz v2, :cond_1

    .line 227
    const-string v1, "Error"

    .line 228
    .local v1, "errorType":Ljava/lang/String;
    const-string v0, "Internet permission"

    .line 229
    .local v0, "errorDescription":Ljava/lang/String;
    iget-object v3, p0, Lcom/facebook/AuthorizationClient;->pendingRequest:Lcom/facebook/AuthorizationClient$AuthorizationRequest;

    invoke-static {v3, v1, v0}, Lcom/facebook/AuthorizationClient$Result;->createErrorResult(Lcom/facebook/AuthorizationClient$AuthorizationRequest;Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/AuthorizationClient$Result;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/facebook/AuthorizationClient;->complete(Lcom/facebook/AuthorizationClient$Result;)V

    .line 231
    const/4 v3, 0x0

    goto :goto_0

    .line 234
    .end local v0    # "errorDescription":Ljava/lang/String;
    .end local v1    # "errorType":Ljava/lang/String;
    :cond_1
    iput-boolean v3, p0, Lcom/facebook/AuthorizationClient;->checkedInternetPermission:Z

    goto :goto_0
.end method

.method checkPermission(Ljava/lang/String;)I
    .locals 1
    .param p1, "permission"    # Ljava/lang/String;

    .prologue
    .line 360
    iget-object v0, p0, Lcom/facebook/AuthorizationClient;->context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method complete(Lcom/facebook/AuthorizationClient$Result;)V
    .locals 3
    .param p1, "outcome"    # Lcom/facebook/AuthorizationClient$Result;

    .prologue
    const/4 v2, 0x0

    .line 305
    iget-object v0, p0, Lcom/facebook/AuthorizationClient;->currentHandler:Lcom/facebook/AuthorizationClient$AuthHandler;

    if-eqz v0, :cond_0

    .line 306
    iget-object v0, p0, Lcom/facebook/AuthorizationClient;->currentHandler:Lcom/facebook/AuthorizationClient$AuthHandler;

    invoke-virtual {v0}, Lcom/facebook/AuthorizationClient$AuthHandler;->getNameForLogging()Ljava/lang/String;

    move-result-object v0

    .line 307
    iget-object v1, p0, Lcom/facebook/AuthorizationClient;->currentHandler:Lcom/facebook/AuthorizationClient$AuthHandler;

    iget-object v1, v1, Lcom/facebook/AuthorizationClient$AuthHandler;->methodLoggingExtras:Ljava/util/Map;

    .line 306
    invoke-direct {p0, v0, p1, v1}, Lcom/facebook/AuthorizationClient;->logAuthorizationMethodComplete(Ljava/lang/String;Lcom/facebook/AuthorizationClient$Result;Ljava/util/Map;)V

    .line 310
    :cond_0
    iget-object v0, p0, Lcom/facebook/AuthorizationClient;->loggingExtras:Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 312
    iget-object v0, p0, Lcom/facebook/AuthorizationClient;->loggingExtras:Ljava/util/Map;

    iput-object v0, p1, Lcom/facebook/AuthorizationClient$Result;->loggingExtras:Ljava/util/Map;

    .line 315
    :cond_1
    iput-object v2, p0, Lcom/facebook/AuthorizationClient;->handlersToTry:Ljava/util/List;

    .line 316
    iput-object v2, p0, Lcom/facebook/AuthorizationClient;->currentHandler:Lcom/facebook/AuthorizationClient$AuthHandler;

    .line 317
    iput-object v2, p0, Lcom/facebook/AuthorizationClient;->pendingRequest:Lcom/facebook/AuthorizationClient$AuthorizationRequest;

    .line 318
    iput-object v2, p0, Lcom/facebook/AuthorizationClient;->loggingExtras:Ljava/util/Map;

    .line 320
    invoke-direct {p0, p1}, Lcom/facebook/AuthorizationClient;->notifyOnCompleteListener(Lcom/facebook/AuthorizationClient$Result;)V

    .line 321
    return-void
.end method

.method completeAndValidate(Lcom/facebook/AuthorizationClient$Result;)V
    .locals 1
    .param p1, "outcome"    # Lcom/facebook/AuthorizationClient$Result;

    .prologue
    .line 294
    iget-object v0, p1, Lcom/facebook/AuthorizationClient$Result;->token:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/AuthorizationClient;->pendingRequest:Lcom/facebook/AuthorizationClient$AuthorizationRequest;

    invoke-virtual {v0}, Lcom/facebook/AuthorizationClient$AuthorizationRequest;->needsNewTokenValidation()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 295
    invoke-virtual {p0, p1}, Lcom/facebook/AuthorizationClient;->validateSameFbidAndFinish(Lcom/facebook/AuthorizationClient$Result;)V

    .line 300
    :goto_0
    return-void

    .line 298
    :cond_0
    invoke-virtual {p0, p1}, Lcom/facebook/AuthorizationClient;->complete(Lcom/facebook/AuthorizationClient$Result;)V

    goto :goto_0
.end method

.method continueAuth()V
    .locals 2

    .prologue
    .line 174
    iget-object v0, p0, Lcom/facebook/AuthorizationClient;->pendingRequest:Lcom/facebook/AuthorizationClient$AuthorizationRequest;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/AuthorizationClient;->currentHandler:Lcom/facebook/AuthorizationClient$AuthHandler;

    if-nez v0, :cond_1

    .line 175
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Attempted to continue authorization without a pending request."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 178
    :cond_1
    iget-object v0, p0, Lcom/facebook/AuthorizationClient;->currentHandler:Lcom/facebook/AuthorizationClient$AuthHandler;

    invoke-virtual {v0}, Lcom/facebook/AuthorizationClient$AuthHandler;->needsRestart()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 179
    iget-object v0, p0, Lcom/facebook/AuthorizationClient;->currentHandler:Lcom/facebook/AuthorizationClient$AuthHandler;

    invoke-virtual {v0}, Lcom/facebook/AuthorizationClient$AuthHandler;->cancel()V

    .line 180
    invoke-virtual {p0}, Lcom/facebook/AuthorizationClient;->tryCurrentHandler()Z

    .line 182
    :cond_2
    return-void
.end method

.method getBackgroundProcessingListener()Lcom/facebook/AuthorizationClient$BackgroundProcessingListener;
    .locals 1

    .prologue
    .line 332
    iget-object v0, p0, Lcom/facebook/AuthorizationClient;->backgroundProcessingListener:Lcom/facebook/AuthorizationClient$BackgroundProcessingListener;

    return-object v0
.end method

.method getInProgress()Z
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/facebook/AuthorizationClient;->pendingRequest:Lcom/facebook/AuthorizationClient$AuthorizationRequest;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/AuthorizationClient;->currentHandler:Lcom/facebook/AuthorizationClient$AuthHandler;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getOnCompletedListener()Lcom/facebook/AuthorizationClient$OnCompletedListener;
    .locals 1

    .prologue
    .line 324
    iget-object v0, p0, Lcom/facebook/AuthorizationClient;->onCompletedListener:Lcom/facebook/AuthorizationClient$OnCompletedListener;

    return-object v0
.end method

.method getStartActivityDelegate()Lcom/facebook/AuthorizationClient$StartActivityDelegate;
    .locals 1

    .prologue
    .line 340
    iget-object v0, p0, Lcom/facebook/AuthorizationClient;->startActivityDelegate:Lcom/facebook/AuthorizationClient$StartActivityDelegate;

    if-eqz v0, :cond_0

    .line 341
    iget-object v0, p0, Lcom/facebook/AuthorizationClient;->startActivityDelegate:Lcom/facebook/AuthorizationClient$StartActivityDelegate;

    .line 356
    :goto_0
    return-object v0

    .line 342
    :cond_0
    iget-object v0, p0, Lcom/facebook/AuthorizationClient;->pendingRequest:Lcom/facebook/AuthorizationClient$AuthorizationRequest;

    if-eqz v0, :cond_1

    .line 344
    new-instance v0, Lcom/facebook/AuthorizationClient$2;

    invoke-direct {v0, p0}, Lcom/facebook/AuthorizationClient$2;-><init>(Lcom/facebook/AuthorizationClient;)V

    goto :goto_0

    .line 356
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)Z
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 195
    iget-object v0, p0, Lcom/facebook/AuthorizationClient;->pendingRequest:Lcom/facebook/AuthorizationClient$AuthorizationRequest;

    invoke-virtual {v0}, Lcom/facebook/AuthorizationClient$AuthorizationRequest;->getRequestCode()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/facebook/AuthorizationClient;->currentHandler:Lcom/facebook/AuthorizationClient$AuthHandler;

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/AuthorizationClient$AuthHandler;->onActivityResult(IILandroid/content/Intent;)Z

    move-result v0

    .line 198
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method setBackgroundProcessingListener(Lcom/facebook/AuthorizationClient$BackgroundProcessingListener;)V
    .locals 0
    .param p1, "backgroundProcessingListener"    # Lcom/facebook/AuthorizationClient$BackgroundProcessingListener;

    .prologue
    .line 336
    iput-object p1, p0, Lcom/facebook/AuthorizationClient;->backgroundProcessingListener:Lcom/facebook/AuthorizationClient$BackgroundProcessingListener;

    .line 337
    return-void
.end method

.method public setContext(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 130
    iput-object p1, p0, Lcom/facebook/AuthorizationClient;->context:Landroid/content/Context;

    .line 134
    new-instance v0, Lcom/facebook/AuthorizationClient$1;

    invoke-direct {v0, p0, p1}, Lcom/facebook/AuthorizationClient$1;-><init>(Lcom/facebook/AuthorizationClient;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/facebook/AuthorizationClient;->startActivityDelegate:Lcom/facebook/AuthorizationClient$StartActivityDelegate;

    .line 145
    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 124
    iput-object p1, p0, Lcom/facebook/AuthorizationClient;->context:Landroid/content/Context;

    .line 126
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/AuthorizationClient;->startActivityDelegate:Lcom/facebook/AuthorizationClient$StartActivityDelegate;

    .line 127
    return-void
.end method

.method public setOnCompletedListener(Lcom/facebook/AuthorizationClient$OnCompletedListener;)V
    .locals 0
    .param p1, "onCompletedListener"    # Lcom/facebook/AuthorizationClient$OnCompletedListener;

    .prologue
    .line 328
    iput-object p1, p0, Lcom/facebook/AuthorizationClient;->onCompletedListener:Lcom/facebook/AuthorizationClient$OnCompletedListener;

    .line 329
    return-void
.end method

.method startOrContinueAuth(Lcom/facebook/AuthorizationClient$AuthorizationRequest;)V
    .locals 1
    .param p1, "request"    # Lcom/facebook/AuthorizationClient$AuthorizationRequest;

    .prologue
    .line 148
    invoke-virtual {p0}, Lcom/facebook/AuthorizationClient;->getInProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    invoke-virtual {p0}, Lcom/facebook/AuthorizationClient;->continueAuth()V

    .line 153
    :goto_0
    return-void

    .line 151
    :cond_0
    invoke-virtual {p0, p1}, Lcom/facebook/AuthorizationClient;->authorize(Lcom/facebook/AuthorizationClient$AuthorizationRequest;)V

    goto :goto_0
.end method

.method tryCurrentHandler()Z
    .locals 4

    .prologue
    .line 275
    iget-object v1, p0, Lcom/facebook/AuthorizationClient;->currentHandler:Lcom/facebook/AuthorizationClient$AuthHandler;

    invoke-virtual {v1}, Lcom/facebook/AuthorizationClient$AuthHandler;->needsInternetPermission()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/facebook/AuthorizationClient;->checkInternetPermission()Z

    move-result v1

    if-nez v1, :cond_0

    .line 278
    const/4 v0, 0x0

    .line 289
    :goto_0
    return v0

    .line 281
    :cond_0
    iget-object v1, p0, Lcom/facebook/AuthorizationClient;->currentHandler:Lcom/facebook/AuthorizationClient$AuthHandler;

    iget-object v2, p0, Lcom/facebook/AuthorizationClient;->pendingRequest:Lcom/facebook/AuthorizationClient$AuthorizationRequest;

    invoke-virtual {v1, v2}, Lcom/facebook/AuthorizationClient$AuthHandler;->tryAuthorize(Lcom/facebook/AuthorizationClient$AuthorizationRequest;)Z

    move-result v0

    .line 282
    .local v0, "tried":Z
    if-eqz v0, :cond_1

    .line 283
    iget-object v1, p0, Lcom/facebook/AuthorizationClient;->currentHandler:Lcom/facebook/AuthorizationClient$AuthHandler;

    invoke-virtual {v1}, Lcom/facebook/AuthorizationClient$AuthHandler;->getNameForLogging()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/facebook/AuthorizationClient;->logAuthorizationMethodStart(Ljava/lang/String;)V

    goto :goto_0

    .line 286
    :cond_1
    const-string v1, "not_tried"

    iget-object v2, p0, Lcom/facebook/AuthorizationClient;->currentHandler:Lcom/facebook/AuthorizationClient$AuthHandler;

    invoke-virtual {v2}, Lcom/facebook/AuthorizationClient$AuthHandler;->getNameForLogging()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {p0, v1, v2, v3}, Lcom/facebook/AuthorizationClient;->addLoggingExtra(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method tryNextHandler()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 239
    iget-object v0, p0, Lcom/facebook/AuthorizationClient;->currentHandler:Lcom/facebook/AuthorizationClient$AuthHandler;

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/facebook/AuthorizationClient;->currentHandler:Lcom/facebook/AuthorizationClient$AuthHandler;

    invoke-virtual {v0}, Lcom/facebook/AuthorizationClient$AuthHandler;->getNameForLogging()Ljava/lang/String;

    move-result-object v1

    const-string v2, "skipped"

    .line 241
    iget-object v0, p0, Lcom/facebook/AuthorizationClient;->currentHandler:Lcom/facebook/AuthorizationClient$AuthHandler;

    iget-object v5, v0, Lcom/facebook/AuthorizationClient$AuthHandler;->methodLoggingExtras:Ljava/util/Map;

    move-object v0, p0

    move-object v4, v3

    .line 240
    invoke-direct/range {v0 .. v5}, Lcom/facebook/AuthorizationClient;->logAuthorizationMethodComplete(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 244
    :cond_0
    iget-object v0, p0, Lcom/facebook/AuthorizationClient;->handlersToTry:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/AuthorizationClient;->handlersToTry:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 254
    :cond_1
    iget-object v0, p0, Lcom/facebook/AuthorizationClient;->pendingRequest:Lcom/facebook/AuthorizationClient$AuthorizationRequest;

    if-eqz v0, :cond_2

    .line 256
    invoke-direct {p0}, Lcom/facebook/AuthorizationClient;->completeWithFailure()V

    .line 258
    :cond_2
    :goto_0
    return-void

    .line 245
    :cond_3
    iget-object v0, p0, Lcom/facebook/AuthorizationClient;->handlersToTry:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/AuthorizationClient$AuthHandler;

    iput-object v0, p0, Lcom/facebook/AuthorizationClient;->currentHandler:Lcom/facebook/AuthorizationClient$AuthHandler;

    .line 247
    invoke-virtual {p0}, Lcom/facebook/AuthorizationClient;->tryCurrentHandler()Z

    move-result v6

    .line 249
    .local v6, "started":Z
    if-eqz v6, :cond_0

    goto :goto_0
.end method

.method validateSameFbidAndFinish(Lcom/facebook/AuthorizationClient$Result;)V
    .locals 2
    .param p1, "pendingResult"    # Lcom/facebook/AuthorizationClient$Result;

    .prologue
    .line 364
    iget-object v0, p1, Lcom/facebook/AuthorizationClient$Result;->token:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 365
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Can\'t validate without a token"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 370
    :cond_0
    invoke-direct {p0}, Lcom/facebook/AuthorizationClient;->notifyBackgroundProcessingStart()V

    .line 373
    return-void
.end method
