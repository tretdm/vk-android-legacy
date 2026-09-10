.class Lcom/vkontakte/android/fragments/AudioListFragment$12;
.super Ljava/lang/Object;
.source "AudioListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/AudioListFragment;->onAttach(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/AudioListFragment;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/AudioListFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/fragments/AudioListFragment$12;->this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

    .line 396
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 399
    iget-object v0, p0, Lcom/vkontakte/android/fragments/AudioListFragment$12;->this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/AudioListFragment;->access$25(Lcom/vkontakte/android/fragments/AudioListFragment;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    if-nez v0, :cond_0

    .line 404
    :goto_0
    return-void

    .line 400
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/fragments/AudioListFragment$12;->this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

    iget-object v0, v0, Lcom/vkontakte/android/fragments/AudioListFragment;->errorView:Lcom/vkontakte/android/ui/ErrorView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/ErrorView;->setVisibility(I)V

    .line 401
    iget-object v0, p0, Lcom/vkontakte/android/fragments/AudioListFragment$12;->this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

    iget-object v0, v0, Lcom/vkontakte/android/fragments/AudioListFragment;->progress:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 402
    iget-object v0, p0, Lcom/vkontakte/android/fragments/AudioListFragment$12;->this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

    iget-object v1, p0, Lcom/vkontakte/android/fragments/AudioListFragment$12;->this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/AudioListFragment;->access$25(Lcom/vkontakte/android/fragments/AudioListFragment;)Lcom/vkontakte/android/APIRequest;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vkontakte/android/fragments/AudioListFragment;->access$26(Lcom/vkontakte/android/fragments/AudioListFragment;Lcom/vkontakte/android/APIRequest;)V

    .line 403
    iget-object v0, p0, Lcom/vkontakte/android/fragments/AudioListFragment$12;->this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/AudioListFragment;->access$25(Lcom/vkontakte/android/fragments/AudioListFragment;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/fragments/AudioListFragment$12;->this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

    invoke-virtual {v1}, Lcom/vkontakte/android/fragments/AudioListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    goto :goto_0
.end method
