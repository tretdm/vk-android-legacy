.class Lcom/vkontakte/android/fragments/AbsVideoListFragment$4;
.super Ljava/lang/Object;
.source "AbsVideoListFragment.java"

# interfaces
.implements Lcom/vkontakte/android/api/WallDelete$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/AbsVideoListFragment;->doDeleteVideo(Lcom/vkontakte/android/api/VideoFile;)V
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
    .line 231
    iput-object p1, p0, Lcom/vkontakte/android/fragments/AbsVideoListFragment$4;->this$0:Lcom/vkontakte/android/fragments/AbsVideoListFragment;

    iput-object p2, p0, Lcom/vkontakte/android/fragments/AbsVideoListFragment$4;->val$vf:Lcom/vkontakte/android/api/VideoFile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 3
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 239
    iget-object v0, p0, Lcom/vkontakte/android/fragments/AbsVideoListFragment$4;->this$0:Lcom/vkontakte/android/fragments/AbsVideoListFragment;

    invoke-virtual {v0}, Lcom/vkontakte/android/fragments/AbsVideoListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0d00d0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 240
    return-void
.end method

.method public success()V
    .locals 3

    .prologue
    .line 234
    iget-object v0, p0, Lcom/vkontakte/android/fragments/AbsVideoListFragment$4;->this$0:Lcom/vkontakte/android/fragments/AbsVideoListFragment;

    iget-object v1, p0, Lcom/vkontakte/android/fragments/AbsVideoListFragment$4;->val$vf:Lcom/vkontakte/android/api/VideoFile;

    iget v1, v1, Lcom/vkontakte/android/api/VideoFile;->oid:I

    iget-object v2, p0, Lcom/vkontakte/android/fragments/AbsVideoListFragment$4;->val$vf:Lcom/vkontakte/android/api/VideoFile;

    iget v2, v2, Lcom/vkontakte/android/api/VideoFile;->vid:I

    invoke-virtual {v0, v1, v2}, Lcom/vkontakte/android/fragments/AbsVideoListFragment;->removeItem(II)V

    .line 235
    return-void
.end method
