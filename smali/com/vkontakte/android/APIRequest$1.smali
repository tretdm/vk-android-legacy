.class Lcom/vkontakte/android/APIRequest$1;
.super Ljava/lang/Object;
.source "APIRequest.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/APIRequest;->exec(Landroid/view/View;)Lcom/vkontakte/android/APIRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/APIRequest;

.field private final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/APIRequest;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/APIRequest$1;->this$0:Lcom/vkontakte/android/APIRequest;

    iput-object p2, p0, Lcom/vkontakte/android/APIRequest$1;->val$v:Landroid/view/View;

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/APIRequest$1;)Lcom/vkontakte/android/APIRequest;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/vkontakte/android/APIRequest$1;->this$0:Lcom/vkontakte/android/APIRequest;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 181
    const/16 v2, 0xa

    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V

    .line 182
    iget-object v2, p0, Lcom/vkontakte/android/APIRequest$1;->this$0:Lcom/vkontakte/android/APIRequest;

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/vkontakte/android/APIRequest;->access$0(Lcom/vkontakte/android/APIRequest;I)V

    .line 183
    iget-object v2, p0, Lcom/vkontakte/android/APIRequest$1;->this$0:Lcom/vkontakte/android/APIRequest;

    invoke-virtual {v2}, Lcom/vkontakte/android/APIRequest;->doExec()Lorg/json/JSONObject;

    move-result-object v0

    .line 184
    .local v0, "o":Lorg/json/JSONObject;
    iget-object v2, p0, Lcom/vkontakte/android/APIRequest$1;->this$0:Lcom/vkontakte/android/APIRequest;

    invoke-static {v2, v0}, Lcom/vkontakte/android/APIRequest;->access$1(Lcom/vkontakte/android/APIRequest;Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v1

    .line 186
    .local v1, "result":Ljava/lang/Object;
    iget-object v2, p0, Lcom/vkontakte/android/APIRequest$1;->val$v:Landroid/view/View;

    if-eqz v2, :cond_1

    .line 187
    iget-object v2, p0, Lcom/vkontakte/android/APIRequest$1;->val$v:Landroid/view/View;

    new-instance v3, Lcom/vkontakte/android/APIRequest$1$1;

    invoke-direct {v3, p0, v1}, Lcom/vkontakte/android/APIRequest$1$1;-><init>(Lcom/vkontakte/android/APIRequest$1;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 198
    :cond_0
    :goto_0
    return-void

    .line 196
    :cond_1
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/vkontakte/android/APIRequest$1;->this$0:Lcom/vkontakte/android/APIRequest;

    invoke-virtual {v2, v1}, Lcom/vkontakte/android/APIRequest;->invokeCallback(Ljava/lang/Object;)V

    goto :goto_0
.end method
