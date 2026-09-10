.class Lcom/vkontakte/android/AudioPlayerActivity$2;
.super Lcom/vkontakte/android/APIRequest$APIHandler;
.source "AudioPlayerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/AudioPlayerActivity;->deleteCurrentFile()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/AudioPlayerActivity;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/AudioPlayerActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/AudioPlayerActivity$2;->this$0:Lcom/vkontakte/android/AudioPlayerActivity;

    .line 68
    invoke-direct {p0}, Lcom/vkontakte/android/APIRequest$APIHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 3
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerActivity$2;->this$0:Lcom/vkontakte/android/AudioPlayerActivity;

    const v1, 0x7f09009c

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 80
    return-void
.end method

.method public success(Lorg/json/JSONObject;)V
    .locals 4
    .param p1, "r"    # Lorg/json/JSONObject;

    .prologue
    .line 70
    iget-object v1, p0, Lcom/vkontakte/android/AudioPlayerActivity$2;->this$0:Lcom/vkontakte/android/AudioPlayerActivity;

    const v2, 0x7f0900e5

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 71
    sget-object v1, Lcom/vkontakte/android/AudioListActivity;->fromTab:Lcom/vkontakte/android/AudioListActivity;

    if-eqz v1, :cond_0

    .line 72
    sget-object v1, Lcom/vkontakte/android/AudioListActivity;->fromTab:Lcom/vkontakte/android/AudioListActivity;

    sget-object v2, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {v2}, Lcom/vkontakte/android/AudioPlayerService;->getCurrentFile()Lcom/vkontakte/android/AudioFile;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/AudioListActivity;->delete(Lcom/vkontakte/android/AudioFile;)V

    .line 73
    :cond_0
    sget-object v1, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {v1}, Lcom/vkontakte/android/AudioPlayerService;->removeCurrentFile()Z

    move-result v0

    .line 74
    .local v0, "needFinish":Z
    if-eqz v0, :cond_1

    .line 75
    iget-object v1, p0, Lcom/vkontakte/android/AudioPlayerActivity$2;->this$0:Lcom/vkontakte/android/AudioPlayerActivity;

    invoke-virtual {v1}, Lcom/vkontakte/android/AudioPlayerActivity;->finish()V

    .line 77
    :cond_1
    return-void
.end method
