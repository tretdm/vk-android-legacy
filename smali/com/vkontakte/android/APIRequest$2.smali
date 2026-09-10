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
    .locals 4

    .prologue
    .line 204
    const/16 v2, 0xa

    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V

    .line 205
    iget-object v2, p0, Lcom/vkontakte/android/APIRequest$2;->this$0:Lcom/vkontakte/android/APIRequest;

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/vkontakte/android/APIRequest;->access$0(Lcom/vkontakte/android/APIRequest;I)V

    .line 206
    iget-object v2, p0, Lcom/vkontakte/android/APIRequest$2;->this$0:Lcom/vkontakte/android/APIRequest;

    invoke-virtual {v2}, Lcom/vkontakte/android/APIRequest;->doExec()Lorg/json/JSONObject;

    move-result-object v0

    .line 207
    .local v0, "o":Lorg/json/JSONObject;
    iget-object v2, p0, Lcom/vkontakte/android/APIRequest$2;->this$0:Lcom/vkontakte/android/APIRequest;

    invoke-static {v2, v0}, Lcom/vkontakte/android/APIRequest;->access$1(Lcom/vkontakte/android/APIRequest;Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v1

    .line 209
    .local v1, "result":Ljava/lang/Object;
    iget-object v2, p0, Lcom/vkontakte/android/APIRequest$2;->val$v:Landroid/app/Activity;

    if-eqz v2, :cond_1

    .line 210
    iget-object v2, p0, Lcom/vkontakte/android/APIRequest$2;->val$v:Landroid/app/Activity;

    new-instance v3, Lcom/vkontakte/android/APIRequest$2$1;

    invoke-direct {v3, p0, v1}, Lcom/vkontakte/android/APIRequest$2$1;-><init>(Lcom/vkontakte/android/APIRequest$2;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 221
    :cond_0
    :goto_0
    return-void

    .line 219
    :cond_1
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/vkontakte/android/APIRequest$2;->this$0:Lcom/vkontakte/android/APIRequest;

    invoke-virtual {v2, v1}, Lcom/vkontakte/android/APIRequest;->invokeCallback(Ljava/lang/Object;)V

    goto :goto_0
.end method
