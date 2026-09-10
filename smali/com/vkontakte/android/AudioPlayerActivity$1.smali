.class Lcom/vkontakte/android/AudioPlayerActivity$1;
.super Lcom/vkontakte/android/APIRequest$APIHandler;
.source "AudioPlayerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/AudioPlayerActivity;->addCurrentFile()V
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
    iput-object p1, p0, Lcom/vkontakte/android/AudioPlayerActivity$1;->this$0:Lcom/vkontakte/android/AudioPlayerActivity;

    .line 43
    invoke-direct {p0}, Lcom/vkontakte/android/APIRequest$APIHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 3
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerActivity$1;->this$0:Lcom/vkontakte/android/AudioPlayerActivity;

    const v1, 0x7f09009c

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 59
    return-void
.end method

.method public success(Lorg/json/JSONObject;)V
    .locals 4
    .param p1, "r"    # Lorg/json/JSONObject;

    .prologue
    .line 45
    iget-object v1, p0, Lcom/vkontakte/android/AudioPlayerActivity$1;->this$0:Lcom/vkontakte/android/AudioPlayerActivity;

    const v2, 0x7f09009b

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 49
    :try_start_0
    sget-object v1, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    sget v2, Lcom/vkontakte/android/Global;->uid:I

    const-string v3, "response"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/vkontakte/android/AudioPlayerService;->setCurrentFileIDs(II)V

    .line 50
    sget-object v1, Lcom/vkontakte/android/AudioListActivity;->fromTab:Lcom/vkontakte/android/AudioListActivity;

    if-eqz v1, :cond_0

    .line 51
    sget-object v1, Lcom/vkontakte/android/AudioListActivity;->fromTab:Lcom/vkontakte/android/AudioListActivity;

    sget-object v2, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {v2}, Lcom/vkontakte/android/AudioPlayerService;->getCurrentFile()Lcom/vkontakte/android/AudioFile;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/AudioListActivity;->addFromTop(Lcom/vkontakte/android/AudioFile;)V

    .line 52
    :cond_0
    iget-object v1, p0, Lcom/vkontakte/android/AudioPlayerActivity$1;->this$0:Lcom/vkontakte/android/AudioPlayerActivity;

    iget-object v1, v1, Lcom/vkontakte/android/AudioPlayerActivity;->contentView:Lcom/vkontakte/android/AudioPlayerView;

    iget-object v1, v1, Lcom/vkontakte/android/AudioPlayerView;->addBtn:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    :goto_0
    return-void

    .line 53
    :catch_0
    move-exception v0

    .line 54
    .local v0, "x":Ljava/lang/Exception;
    const-string v1, "vk"

    invoke-static {v1, v0}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
