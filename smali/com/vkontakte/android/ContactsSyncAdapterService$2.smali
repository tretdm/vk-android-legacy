.class final Lcom/vkontakte/android/ContactsSyncAdapterService$2;
.super Lcom/vkontakte/android/APIRequest$APIHandler;
.source "ContactsSyncAdapterService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/ContactsSyncAdapterService;->performSync(Landroid/content/Context;Landroid/accounts/Account;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/ContentProviderClient;Landroid/content/SyncResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$contacts:Ljava/util/Vector;


# direct methods
.method constructor <init>(Ljava/util/Vector;)V
    .locals 0

    .prologue
    .line 191
    iput-object p1, p0, Lcom/vkontakte/android/ContactsSyncAdapterService$2;->val$contacts:Ljava/util/Vector;

    invoke-direct {p0}, Lcom/vkontakte/android/APIRequest$APIHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 3
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 214
    const-string v0, "vk"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sync error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

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

    .line 216
    invoke-static {}, Lcom/vkontakte/android/ContactsSyncAdapterService;->access$410()I

    .line 217
    return-void
.end method

.method public success(Lorg/json/JSONObject;)V
    .locals 11
    .param p1, "r"    # Lorg/json/JSONObject;

    .prologue
    .line 195
    :try_start_0
    const-string v8, "response"

    invoke-static {p1, v8}, Lcom/vkontakte/android/api/APIUtils;->unwrapArray(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/vkontakte/android/api/JSONArrayWithCount;

    move-result-object v8

    iget-object v0, v8, Lcom/vkontakte/android/api/JSONArrayWithCount;->array:Lorg/json/JSONArray;

    .line 196
    .local v0, "a":Lorg/json/JSONArray;
    const-string v8, "vk"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "COUNT = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v2, v8, :cond_3

    .line 198
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 199
    .local v6, "user":Lorg/json/JSONObject;
    const/4 v1, 0x0

    .line 200
    .local v1, "contains":Z
    const-string v8, "id"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 201
    .local v5, "uid":I
    iget-object v8, p0, Lcom/vkontakte/android/ContactsSyncAdapterService$2;->val$contacts:Ljava/util/Vector;

    invoke-virtual {v8}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vkontakte/android/ContactsSyncAdapterService$ExtendedUserProfile;

    .line 202
    .local v4, "p":Lcom/vkontakte/android/ContactsSyncAdapterService$ExtendedUserProfile;
    iget v8, v4, Lcom/vkontakte/android/ContactsSyncAdapterService$ExtendedUserProfile;->uid:I

    if-ne v8, v5, :cond_0

    .line 203
    const/4 v1, 0x1

    .line 207
    .end local v4    # "p":Lcom/vkontakte/android/ContactsSyncAdapterService$ExtendedUserProfile;
    :cond_1
    if-nez v1, :cond_2

    iget-object v8, p0, Lcom/vkontakte/android/ContactsSyncAdapterService$2;->val$contacts:Ljava/util/Vector;

    invoke-static {v6}, Lcom/vkontakte/android/ContactsSyncAdapterService;->access$200(Lorg/json/JSONObject;)Lcom/vkontakte/android/ContactsSyncAdapterService$ExtendedUserProfile;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 197
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 209
    .end local v1    # "contains":Z
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v5    # "uid":I
    .end local v6    # "user":Lorg/json/JSONObject;
    :cond_3
    const-string v8, "vk"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Res COUNT = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/vkontakte/android/ContactsSyncAdapterService$2;->val$contacts:Ljava/util/Vector;

    invoke-virtual {v10}, Ljava/util/Vector;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 211
    .end local v0    # "a":Lorg/json/JSONArray;
    .end local v2    # "i":I
    :goto_1
    const/4 v8, 0x1

    invoke-static {v8}, Lcom/vkontakte/android/ContactsSyncAdapterService;->access$302(Z)Z

    .line 212
    return-void

    .line 210
    :catch_0
    move-exception v7

    .local v7, "x":Ljava/lang/Exception;
    const-string v8, "vk"

    invoke-static {v8, v7}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method
