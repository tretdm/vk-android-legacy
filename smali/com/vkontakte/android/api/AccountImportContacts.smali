.class public Lcom/vkontakte/android/api/AccountImportContacts;
.super Lcom/vkontakte/android/APIRequest;
.source "AccountImportContacts.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/api/AccountImportContacts$Callback;
    }
.end annotation


# instance fields
.field callback:Lcom/vkontakte/android/api/AccountImportContacts$Callback;


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/lang/String;)V
    .locals 2
    .param p2, "myId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 15
    .local p1, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "account.importContacts"

    invoke-direct {p0, v0}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 16
    const-string v0, "contacts"

    const-string v1, ","

    invoke-static {v1, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/api/AccountImportContacts;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    .line 17
    if-eqz p2, :cond_0

    .line 18
    const-string v0, "my_contact"

    invoke-virtual {p0, v0, p2}, Lcom/vkontakte/android/api/AccountImportContacts;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    .line 19
    :cond_0
    return-void
.end method


# virtual methods
.method public invokeCallback(Ljava/lang/Object;)V
    .locals 4
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 35
    iget-object v1, p0, Lcom/vkontakte/android/api/AccountImportContacts;->callback:Lcom/vkontakte/android/api/AccountImportContacts$Callback;

    if-nez v1, :cond_0

    .line 43
    :goto_0
    return-void

    .line 37
    :cond_0
    instance-of v1, p1, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 38
    check-cast v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    .line 39
    .local v0, "er":Lcom/vkontakte/android/APIRequest$ErrorResponse;
    iget-object v1, p0, Lcom/vkontakte/android/api/AccountImportContacts;->callback:Lcom/vkontakte/android/api/AccountImportContacts$Callback;

    iget v2, v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;->errorCode:I

    iget-object v3, v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;->errorMessage:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/vkontakte/android/api/AccountImportContacts$Callback;->fail(ILjava/lang/String;)V

    goto :goto_0

    .line 41
    .end local v0    # "er":Lcom/vkontakte/android/APIRequest$ErrorResponse;
    :cond_1
    iget-object v1, p0, Lcom/vkontakte/android/api/AccountImportContacts;->callback:Lcom/vkontakte/android/api/AccountImportContacts$Callback;

    invoke-interface {v1}, Lcom/vkontakte/android/api/AccountImportContacts$Callback;->success()V

    goto :goto_0
.end method

.method public parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 2
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    const/4 v0, 0x1

    .line 23
    :try_start_0
    const-string v1, "response"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 26
    :goto_1
    return-object v0

    .line 23
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 24
    :catch_0
    move-exception v0

    .line 26
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public setCallback(Lcom/vkontakte/android/api/AccountImportContacts$Callback;)Lcom/vkontakte/android/APIRequest;
    .locals 0
    .param p1, "cb"    # Lcom/vkontakte/android/api/AccountImportContacts$Callback;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/vkontakte/android/api/AccountImportContacts;->callback:Lcom/vkontakte/android/api/AccountImportContacts$Callback;

    .line 31
    return-object p0
.end method
