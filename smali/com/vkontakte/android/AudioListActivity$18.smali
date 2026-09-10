.class Lcom/vkontakte/android/AudioListActivity$18;
.super Lcom/vkontakte/android/APIRequest$APIHandler;
.source "AudioListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/AudioListActivity;->deleteCurrentFile()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/AudioListActivity;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/AudioListActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/AudioListActivity$18;->this$0:Lcom/vkontakte/android/AudioListActivity;

    .line 728
    invoke-direct {p0}, Lcom/vkontakte/android/APIRequest$APIHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 3
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 740
    iget-object v0, p0, Lcom/vkontakte/android/AudioListActivity$18;->this$0:Lcom/vkontakte/android/AudioListActivity;

    const v1, 0x7f09009b

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 741
    return-void
.end method

.method public success(Lorg/json/JSONObject;)V
    .locals 4
    .param p1, "r"    # Lorg/json/JSONObject;

    .prologue
    .line 730
    iget-object v1, p0, Lcom/vkontakte/android/AudioListActivity$18;->this$0:Lcom/vkontakte/android/AudioListActivity;

    const v2, 0x7f0900e4

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 731
    sget-object v1, Lcom/vkontakte/android/AudioListActivity;->fromTab:Lcom/vkontakte/android/AudioListActivity;

    if-eqz v1, :cond_0

    .line 732
    sget-object v1, Lcom/vkontakte/android/AudioListActivity;->fromTab:Lcom/vkontakte/android/AudioListActivity;

    sget-object v2, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {v2}, Lcom/vkontakte/android/AudioPlayerService;->getCurrentFile()Lcom/vkontakte/android/AudioFile;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/AudioListActivity;->delete(Lcom/vkontakte/android/AudioFile;)V

    .line 733
    :cond_0
    sget-object v1, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {v1}, Lcom/vkontakte/android/AudioPlayerService;->removeCurrentFile()Z

    move-result v0

    .line 734
    .local v0, "needFinish":Z
    if-eqz v0, :cond_1

    .line 735
    iget-object v1, p0, Lcom/vkontakte/android/AudioListActivity$18;->this$0:Lcom/vkontakte/android/AudioListActivity;

    invoke-static {v1}, Lcom/vkontakte/android/AudioListActivity;->access$1(Lcom/vkontakte/android/AudioListActivity;)Lcom/vkontakte/android/ui/SlidingDrawer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vkontakte/android/ui/SlidingDrawer;->animateClose()V

    .line 736
    iget-object v1, p0, Lcom/vkontakte/android/AudioListActivity$18;->this$0:Lcom/vkontakte/android/AudioListActivity;

    invoke-static {v1}, Lcom/vkontakte/android/AudioListActivity;->access$1(Lcom/vkontakte/android/AudioListActivity;)Lcom/vkontakte/android/ui/SlidingDrawer;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/ui/SlidingDrawer;->setVisibility(I)V

    .line 738
    :cond_1
    return-void
.end method
