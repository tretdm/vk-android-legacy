.class Lcom/vkontakte/android/AudioListActivity$13;
.super Ljava/lang/Object;
.source "AudioListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/AudioListActivity;->loadList(ILjava/lang/String;IZ)V
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
    iput-object p1, p0, Lcom/vkontakte/android/AudioListActivity$13;->this$0:Lcom/vkontakte/android/AudioListActivity;

    .line 415
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/AudioListActivity$13;)Lcom/vkontakte/android/AudioListActivity;
    .locals 1

    .prologue
    .line 415
    iget-object v0, p0, Lcom/vkontakte/android/AudioListActivity$13;->this$0:Lcom/vkontakte/android/AudioListActivity;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 416
    iget-object v0, p0, Lcom/vkontakte/android/AudioListActivity$13;->this$0:Lcom/vkontakte/android/AudioListActivity;

    iget-object v1, p0, Lcom/vkontakte/android/AudioListActivity$13;->this$0:Lcom/vkontakte/android/AudioListActivity;

    iget-object v2, p0, Lcom/vkontakte/android/AudioListActivity$13;->this$0:Lcom/vkontakte/android/AudioListActivity;

    invoke-static {v2}, Lcom/vkontakte/android/cache/AudioCache;->getCachedList(Landroid/content/Context;)[Lcom/vkontakte/android/AudioFile;

    move-result-object v2

    iput-object v2, v1, Lcom/vkontakte/android/AudioListActivity;->myAudios:[Lcom/vkontakte/android/AudioFile;

    iput-object v2, v0, Lcom/vkontakte/android/AudioListActivity;->audios:[Lcom/vkontakte/android/AudioFile;

    .line 418
    iget-object v0, p0, Lcom/vkontakte/android/AudioListActivity$13;->this$0:Lcom/vkontakte/android/AudioListActivity;

    new-instance v1, Lcom/vkontakte/android/AudioListActivity$13$1;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/AudioListActivity$13$1;-><init>(Lcom/vkontakte/android/AudioListActivity$13;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/AudioListActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 422
    iget-object v0, p0, Lcom/vkontakte/android/AudioListActivity$13;->this$0:Lcom/vkontakte/android/AudioListActivity;

    iget-object v1, p0, Lcom/vkontakte/android/AudioListActivity$13;->this$0:Lcom/vkontakte/android/AudioListActivity;

    invoke-static {v1}, Lcom/vkontakte/android/AudioListActivity;->access$12(Lcom/vkontakte/android/AudioListActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/AudioListActivity;->localSearch(Ljava/lang/String;)V

    .line 423
    iget-object v0, p0, Lcom/vkontakte/android/AudioListActivity$13;->this$0:Lcom/vkontakte/android/AudioListActivity;

    invoke-virtual {v0}, Lcom/vkontakte/android/AudioListActivity;->updateList()V

    .line 424
    return-void
.end method
