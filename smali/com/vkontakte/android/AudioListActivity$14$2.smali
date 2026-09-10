.class Lcom/vkontakte/android/AudioListActivity$14$2;
.super Ljava/lang/Object;
.source "AudioListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/AudioListActivity$14;->fail(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/AudioListActivity$14;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/AudioListActivity$14;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/AudioListActivity$14$2;->this$1:Lcom/vkontakte/android/AudioListActivity$14;

    .line 471
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 472
    iget-object v0, p0, Lcom/vkontakte/android/AudioListActivity$14$2;->this$1:Lcom/vkontakte/android/AudioListActivity$14;

    invoke-static {v0}, Lcom/vkontakte/android/AudioListActivity$14;->access$0(Lcom/vkontakte/android/AudioListActivity$14;)Lcom/vkontakte/android/AudioListActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/AudioListActivity;->getListView()Lcom/vkontakte/android/ui/RefreshableListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/RefreshableListView;->refreshDone()V

    .line 473
    return-void
.end method
