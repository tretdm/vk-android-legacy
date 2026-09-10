.class Lcom/vkontakte/android/fragments/PostViewFragment$PostCommentsAdapter$2;
.super Ljava/lang/Object;
.source "PostViewFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/PostViewFragment$PostCommentsAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/fragments/PostViewFragment$PostCommentsAdapter;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/PostViewFragment$PostCommentsAdapter;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/fragments/PostViewFragment$PostCommentsAdapter$2;->this$1:Lcom/vkontakte/android/fragments/PostViewFragment$PostCommentsAdapter;

    .line 1529
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1532
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1533
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "id"

    iget-object v1, p0, Lcom/vkontakte/android/fragments/PostViewFragment$PostCommentsAdapter$2;->this$1:Lcom/vkontakte/android/fragments/PostViewFragment$PostCommentsAdapter;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/PostViewFragment$PostCommentsAdapter;->access$1(Lcom/vkontakte/android/fragments/PostViewFragment$PostCommentsAdapter;)Lcom/vkontakte/android/fragments/PostViewFragment;

    move-result-object v1

    invoke-static {v1}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$2(Lcom/vkontakte/android/fragments/PostViewFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/NewsComment;

    iget v1, v1, Lcom/vkontakte/android/NewsComment;->uid:I

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1534
    const-string v1, "ProfileFragment"

    iget-object v2, p0, Lcom/vkontakte/android/fragments/PostViewFragment$PostCommentsAdapter$2;->this$1:Lcom/vkontakte/android/fragments/PostViewFragment$PostCommentsAdapter;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/PostViewFragment$PostCommentsAdapter;->access$1(Lcom/vkontakte/android/fragments/PostViewFragment$PostCommentsAdapter;)Lcom/vkontakte/android/fragments/PostViewFragment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vkontakte/android/fragments/PostViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/vkontakte/android/Navigate;->to(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;)V

    .line 1535
    return-void
.end method
