.class Lcom/vkontakte/android/AudioListActivity$11;
.super Ljava/lang/Object;
.source "AudioListActivity.java"

# interfaces
.implements Lcom/vkontakte/android/ui/SlidingDrawer$OnDrawerScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/AudioListActivity;->onCreate(Landroid/os/Bundle;)V
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
    iput-object p1, p0, Lcom/vkontakte/android/AudioListActivity$11;->this$0:Lcom/vkontakte/android/AudioListActivity;

    .line 299
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollEnded()V
    .locals 3

    .prologue
    .line 308
    const-string v0, "vk"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "scroll ended "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/vkontakte/android/AudioListActivity$11;->this$0:Lcom/vkontakte/android/AudioListActivity;

    invoke-static {v2}, Lcom/vkontakte/android/AudioListActivity;->access$1(Lcom/vkontakte/android/AudioListActivity;)Lcom/vkontakte/android/ui/SlidingDrawer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vkontakte/android/ui/SlidingDrawer;->isOpened()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    return-void
.end method

.method public onScrollStarted()V
    .locals 3

    .prologue
    .line 301
    const-string v0, "vk"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "scroll started "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/vkontakte/android/AudioListActivity$11;->this$0:Lcom/vkontakte/android/AudioListActivity;

    invoke-static {v2}, Lcom/vkontakte/android/AudioListActivity;->access$1(Lcom/vkontakte/android/AudioListActivity;)Lcom/vkontakte/android/ui/SlidingDrawer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vkontakte/android/ui/SlidingDrawer;->isOpened()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    iget-object v0, p0, Lcom/vkontakte/android/AudioListActivity$11;->this$0:Lcom/vkontakte/android/AudioListActivity;

    invoke-static {v0}, Lcom/vkontakte/android/AudioListActivity;->access$1(Lcom/vkontakte/android/AudioListActivity;)Lcom/vkontakte/android/ui/SlidingDrawer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/SlidingDrawer;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 303
    sget-object v0, Lcom/vkontakte/android/MainActivity;->lastInstance:Lcom/vkontakte/android/MainActivity;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/vkontakte/android/MainActivity;->lastInstance:Lcom/vkontakte/android/MainActivity;

    iget-object v0, v0, Lcom/vkontakte/android/MainActivity;->tabbar:Lcom/vkontakte/android/ExtendedTabBar;

    invoke-virtual {v0}, Lcom/vkontakte/android/ExtendedTabBar;->getTabsView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 305
    :cond_0
    return-void
.end method
