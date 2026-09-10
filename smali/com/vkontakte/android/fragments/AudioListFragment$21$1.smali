.class Lcom/vkontakte/android/fragments/AudioListFragment$21$1;
.super Ljava/lang/Object;
.source "AudioListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/AudioListFragment$21;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/fragments/AudioListFragment$21;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/AudioListFragment$21;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/fragments/AudioListFragment$21$1;->this$1:Lcom/vkontakte/android/fragments/AudioListFragment$21;

    .line 845
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/16 v2, 0x12c

    .line 846
    iget-object v0, p0, Lcom/vkontakte/android/fragments/AudioListFragment$21$1;->this$1:Lcom/vkontakte/android/fragments/AudioListFragment$21;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/AudioListFragment$21;->access$0(Lcom/vkontakte/android/fragments/AudioListFragment$21;)Lcom/vkontakte/android/fragments/AudioListFragment;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/fragments/AudioListFragment;->access$1(Lcom/vkontakte/android/fragments/AudioListFragment;)Lcom/vkontakte/android/fragments/AudioListFragment$AudioListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/fragments/AudioListFragment$AudioListAdapter;->notifyDataSetChanged()V

    .line 847
    iget-object v0, p0, Lcom/vkontakte/android/fragments/AudioListFragment$21$1;->this$1:Lcom/vkontakte/android/fragments/AudioListFragment$21;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/AudioListFragment$21;->access$0(Lcom/vkontakte/android/fragments/AudioListFragment$21;)Lcom/vkontakte/android/fragments/AudioListFragment;

    move-result-object v0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/AudioListFragment;->contentWrap:Landroid/widget/FrameLayout;

    const/4 v1, 0x1

    invoke-static {v0, v1, v2}, Lcom/vkontakte/android/Global;->showViewAnimated(Landroid/view/View;ZI)V

    .line 848
    iget-object v0, p0, Lcom/vkontakte/android/fragments/AudioListFragment$21$1;->this$1:Lcom/vkontakte/android/fragments/AudioListFragment$21;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/AudioListFragment$21;->access$0(Lcom/vkontakte/android/fragments/AudioListFragment$21;)Lcom/vkontakte/android/fragments/AudioListFragment;

    move-result-object v0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/AudioListFragment;->progress:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-static {v0, v1, v2}, Lcom/vkontakte/android/Global;->showViewAnimated(Landroid/view/View;ZI)V

    .line 849
    return-void
.end method
