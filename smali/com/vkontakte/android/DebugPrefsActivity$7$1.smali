.class Lcom/vkontakte/android/DebugPrefsActivity$7$1;
.super Lcom/vkontakte/android/APIRequest$APIHandler;
.source "DebugPrefsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/DebugPrefsActivity$7;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/DebugPrefsActivity$7;

.field final synthetic val$ended:[Z

.field final synthetic val$offset:[I

.field final synthetic val$total:[I


# direct methods
.method constructor <init>(Lcom/vkontakte/android/DebugPrefsActivity$7;[I[Z[I)V
    .locals 0

    .prologue
    .line 173
    iput-object p1, p0, Lcom/vkontakte/android/DebugPrefsActivity$7$1;->this$1:Lcom/vkontakte/android/DebugPrefsActivity$7;

    iput-object p2, p0, Lcom/vkontakte/android/DebugPrefsActivity$7$1;->val$total:[I

    iput-object p3, p0, Lcom/vkontakte/android/DebugPrefsActivity$7$1;->val$ended:[Z

    iput-object p4, p0, Lcom/vkontakte/android/DebugPrefsActivity$7$1;->val$offset:[I

    invoke-direct {p0}, Lcom/vkontakte/android/APIRequest$APIHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 3
    .param p1, "code"    # I
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 199
    const-string v0, "vk"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error "

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

    invoke-static {v0, v1}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    const-wide/16 v0, 0xc8

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 202
    :goto_0
    return-void

    .line 201
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public success(Lorg/json/JSONObject;)V
    .locals 11
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 176
    :try_start_0
    const-string v5, "response"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 177
    iget-object v5, p0, Lcom/vkontakte/android/DebugPrefsActivity$7$1;->val$total:[I

    const/4 v8, 0x0

    const-string v9, "count"

    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    aput v9, v5, v8

    .line 178
    const-string v5, "items"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 179
    .local v0, "a":Lorg/json/JSONArray;
    iget-object v8, p0, Lcom/vkontakte/android/DebugPrefsActivity$7$1;->val$ended:[Z

    const/4 v9, 0x0

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-nez v5, :cond_0

    move v5, v6

    :goto_0
    aput-boolean v5, v8, v9

    .line 180
    iget-object v5, p0, Lcom/vkontakte/android/DebugPrefsActivity$7$1;->val$offset:[I

    const/4 v8, 0x0

    aget v9, v5, v8

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v10

    add-int/2addr v9, v10

    aput v9, v5, v8

    .line 181
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 182
    .local v1, "acts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/cache/MessagesAction;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v2, v5, :cond_1

    .line 183
    new-instance v3, Lcom/vkontakte/android/Message;

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    invoke-direct {v3, v5}, Lcom/vkontakte/android/Message;-><init>(Lorg/json/JSONObject;)V

    .line 184
    .local v3, "msg":Lcom/vkontakte/android/Message;
    new-instance v5, Lcom/vkontakte/android/cache/AddMessageAction;

    invoke-direct {v5, v3}, Lcom/vkontakte/android/cache/AddMessageAction;-><init>(Lcom/vkontakte/android/Message;)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 182
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v1    # "acts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/cache/MessagesAction;>;"
    .end local v2    # "i":I
    .end local v3    # "msg":Lcom/vkontakte/android/Message;
    :cond_0
    move v5, v7

    .line 179
    goto :goto_0

    .line 186
    .restart local v1    # "acts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/cache/MessagesAction;>;"
    .restart local v2    # "i":I
    :cond_1
    invoke-static {v1}, Lcom/vkontakte/android/cache/Cache;->applyMessagesActions(Ljava/util/ArrayList;)I

    .line 187
    iget-object v5, p0, Lcom/vkontakte/android/DebugPrefsActivity$7$1;->this$1:Lcom/vkontakte/android/DebugPrefsActivity$7;

    iget-object v5, v5, Lcom/vkontakte/android/DebugPrefsActivity$7;->this$0:Lcom/vkontakte/android/DebugPrefsActivity;

    new-instance v8, Lcom/vkontakte/android/DebugPrefsActivity$7$1$1;

    invoke-direct {v8, p0}, Lcom/vkontakte/android/DebugPrefsActivity$7$1$1;-><init>(Lcom/vkontakte/android/DebugPrefsActivity$7$1;)V

    invoke-virtual {v5, v8}, Lcom/vkontakte/android/DebugPrefsActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 197
    .end local v0    # "a":Lorg/json/JSONArray;
    .end local v1    # "acts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/cache/MessagesAction;>;"
    .end local v2    # "i":I
    :goto_2
    return-void

    .line 193
    :catch_0
    move-exception v4

    .line 194
    .local v4, "x":Ljava/lang/Exception;
    const-string v5, "vk"

    invoke-static {v5, v4}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 195
    iget-object v5, p0, Lcom/vkontakte/android/DebugPrefsActivity$7$1;->val$ended:[Z

    aput-boolean v6, v5, v7

    goto :goto_2
.end method
