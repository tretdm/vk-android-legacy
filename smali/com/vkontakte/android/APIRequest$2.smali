.class Lcom/vkontakte/android/APIRequest$2;
.super Ljava/lang/Object;
.source "APIRequest.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/APIRequest;

.field private final synthetic val$v:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/APIRequest;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/APIRequest$2;->this$0:Lcom/vkontakte/android/APIRequest;

    iput-object p2, p0, Lcom/vkontakte/android/APIRequest$2;->val$v:Landroid/app/Activity;

    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/APIRequest$2;)Lcom/vkontakte/android/APIRequest;
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/vkontakte/android/APIRequest$2;->this$0:Lcom/vkontakte/android/APIRequest;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 204
    iget-object v1, p0, Lcom/vkontakte/android/APIRequest$2;->this$0:Lcom/vkontakte/android/APIRequest;

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/vkontakte/android/APIRequest;->access$0(Lcom/vkontakte/android/APIRequest;I)V

    .line 205
    iget-object v1, p0, Lcom/vkontakte/android/APIRequest$2;->this$0:Lcom/vkontakte/android/APIRequest;

    invoke-virtual {v1}, Lcom/vkontakte/android/APIRequest;->doExec()Lorg/json/JSONObject;

    move-result-object v0

    .line 206
    .local v0, "o":Lorg/json/JSONObject;
    iget-object v1, p0, Lcom/vkontakte/android/APIRequest$2;->this$0:Lcom/vkontakte/android/APIRequest;

    invoke-static {v1}, Lcom/vkontakte/android/APIRequest;->access$1(Lcom/vkontakte/android/APIRequest;)Lcom/vkontakte/android/APIRequest$APIHandler;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 207
    iget-object v1, p0, Lcom/vkontakte/android/APIRequest$2;->val$v:Landroid/app/Activity;

    if-eqz v1, :cond_1

    .line 208
    iget-object v1, p0, Lcom/vkontakte/android/APIRequest$2;->val$v:Landroid/app/Activity;

    new-instance v2, Lcom/vkontakte/android/APIRequest$2$1;

    invoke-direct {v2, p0, v0}, Lcom/vkontakte/android/APIRequest$2$1;-><init>(Lcom/vkontakte/android/APIRequest$2;Lorg/json/JSONObject;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 213
    :cond_0
    :goto_0
    return-void

    .line 211
    :cond_1
    iget-object v1, p0, Lcom/vkontakte/android/APIRequest$2;->this$0:Lcom/vkontakte/android/APIRequest;

    invoke-static {v1, v0}, Lcom/vkontakte/android/APIRequest;->access$2(Lcom/vkontakte/android/APIRequest;Lorg/json/JSONObject;)Z

    goto :goto_0
.end method
