.class Lcom/vkontakte/android/ContactsSyncAdapterService$2;
.super Lcom/vkontakte/android/APIRequest$APIHandler;
.source "ContactsSyncAdapterService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/ContactsSyncAdapterService;->performSync(Landroid/content/Context;Landroid/accounts/Account;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/ContentProviderClient;Landroid/content/SyncResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$contacts:Ljava/util/Vector;


# direct methods
.method constructor <init>(Ljava/util/Vector;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/ContactsSyncAdapterService$2;->val$contacts:Ljava/util/Vector;

    .line 190
    invoke-direct {p0}, Lcom/vkontakte/android/APIRequest$APIHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 3
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 211
    const-string v0, "vk"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Sync error "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vkontakte/android/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    invoke-static {}, Lcom/vkontakte/android/ContactsSyncAdapterService;->access$8()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Lcom/vkontakte/android/ContactsSyncAdapterService;->access$9(I)V

    .line 214
    return-void
.end method

.method public success(Lorg/json/JSONObject;)V
    .locals 9
    .param p1, "r"    # Lorg/json/JSONObject;

    .prologue
    .line 194
    :try_start_0
    const-string v7, "response"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 195
    .local v0, "a":Lorg/json/JSONArray;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    if-lt v2, v7, :cond_0

    .line 208
    .end local v0    # "a":Lorg/json/JSONArray;
    .end local v2    # "i":I
    :goto_1
    const/4 v7, 0x1

    invoke-static {v7}, Lcom/vkontakte/android/ContactsSyncAdapterService;->access$7(Z)V

    .line 209
    return-void

    .line 196
    .restart local v0    # "a":Lorg/json/JSONArray;
    .restart local v2    # "i":I
    :cond_0
    :try_start_1
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 197
    .local v5, "user":Lorg/json/JSONObject;
    const/4 v1, 0x0

    .line 198
    .local v1, "contains":Z
    const-string v7, "uid"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 199
    .local v4, "uid":I
    iget-object v7, p0, Lcom/vkontakte/android/ContactsSyncAdapterService$2;->val$contacts:Ljava/util/Vector;

    invoke-virtual {v7}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_3

    .line 205
    :goto_2
    if-nez v1, :cond_2

    iget-object v7, p0, Lcom/vkontakte/android/ContactsSyncAdapterService$2;->val$contacts:Ljava/util/Vector;

    invoke-static {v5}, Lcom/vkontakte/android/ContactsSyncAdapterService;->access$6(Lorg/json/JSONObject;)Lcom/vkontakte/android/ContactsSyncAdapterService$ExtendedUserProfile;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 195
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 199
    :cond_3
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vkontakte/android/ContactsSyncAdapterService$ExtendedUserProfile;

    .line 200
    .local v3, "p":Lcom/vkontakte/android/ContactsSyncAdapterService$ExtendedUserProfile;
    iget v8, v3, Lcom/vkontakte/android/ContactsSyncAdapterService$ExtendedUserProfile;->uid:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-ne v8, v4, :cond_1

    .line 201
    const/4 v1, 0x1

    .line 202
    goto :goto_2

    .line 207
    .end local v0    # "a":Lorg/json/JSONArray;
    .end local v1    # "contains":Z
    .end local v2    # "i":I
    .end local v3    # "p":Lcom/vkontakte/android/ContactsSyncAdapterService$ExtendedUserProfile;
    .end local v4    # "uid":I
    .end local v5    # "user":Lorg/json/JSONObject;
    :catch_0
    move-exception v6

    .local v6, "x":Ljava/lang/Exception;
    const-string v7, "vk"

    invoke-static {v7, v6}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method
