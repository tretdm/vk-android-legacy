.class Lcom/vkontakte/android/AudioListActivity$9;
.super Ljava/lang/Object;
.source "AudioListActivity.java"

# interfaces
.implements Lcom/vkontakte/android/ui/SlidingDrawer$OnDrawerCloseListener;


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
    iput-object p1, p0, Lcom/vkontakte/android/AudioListActivity$9;->this$0:Lcom/vkontakte/android/AudioListActivity;

    .line 285
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrawerClosed()V
    .locals 2

    .prologue
    .line 289
    sget-object v0, Lcom/vkontakte/android/MainActivity;->lastInstance:Lcom/vkontakte/android/MainActivity;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/vkontakte/android/MainActivity;->lastInstance:Lcom/vkontakte/android/MainActivity;

    iget-object v0, v0, Lcom/vkontakte/android/MainActivity;->tabbar:Lcom/vkontakte/android/ExtendedTabBar;

    invoke-virtual {v0}, Lcom/vkontakte/android/ExtendedTabBar;->getTabsView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 290
    :cond_0
    return-void
.end method
