.class Lcom/vkontakte/android/fragments/AbsVideoListFragment$5;
.super Ljava/lang/Object;
.source "AbsVideoListFragment.java"

# interfaces
.implements Lcom/vkontakte/android/api/VideoAdd$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/AbsVideoListFragment;->addVideo(Lcom/vkontakte/android/api/VideoFile;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/AbsVideoListFragment;

.field final synthetic val$vf:Lcom/vkontakte/android/api/VideoFile;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/AbsVideoListFragment;Lcom/vkontakte/android/api/VideoFile;)V
    .locals 0

    .prologue
    .line 264
    iput-object p1, p0, Lcom/vkontakte/android/fragments/AbsVideoListFragment$5;->this$0:Lcom/vkontakte/android/fragments/AbsVideoListFragment;

    iput-object p2, p0, Lcom/vkontakte/android/fragments/AbsVideoListFragment$5;->val$vf:Lcom/vkontakte/android/api/VideoFile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 3
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 273
    iget-object v0, p0, Lcom/vkontakte/android/fragments/AbsVideoListFragment$5;->this$0:Lcom/vkontakte/android/fragments/AbsVideoListFragment;

    invoke-virtual {v0}, Lcom/vkontakte/android/fragments/AbsVideoListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0d00d0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 274
    return-void
.end method

.method public success(I)V
    .locals 6
    .param p1, "vid"    # I

    .prologue
    const/4 v5, 0x0

    .line 268
    iget-object v0, p0, Lcom/vkontakte/android/fragments/AbsVideoListFragment$5;->this$0:Lcom/vkontakte/android/fragments/AbsVideoListFragment;

    invoke-virtual {v0}, Lcom/vkontakte/android/fragments/AbsVideoListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/fragments/AbsVideoListFragment$5;->this$0:Lcom/vkontakte/android/fragments/AbsVideoListFragment;

    invoke-virtual {v1}, Lcom/vkontakte/android/fragments/AbsVideoListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0357

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/vkontakte/android/fragments/AbsVideoListFragment$5;->val$vf:Lcom/vkontakte/android/api/VideoFile;

    iget-object v4, v4, Lcom/vkontakte/android/api/VideoFile;->title:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 269
    return-void
.end method
