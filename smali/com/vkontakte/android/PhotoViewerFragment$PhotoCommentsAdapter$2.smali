.class Lcom/vkontakte/android/PhotoViewerFragment$PhotoCommentsAdapter$2;
.super Ljava/lang/Object;
.source "PhotoViewerFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/PhotoViewerFragment$PhotoCommentsAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/PhotoViewerFragment$PhotoCommentsAdapter;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/PhotoViewerFragment$PhotoCommentsAdapter;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/PhotoViewerFragment$PhotoCommentsAdapter$2;->this$1:Lcom/vkontakte/android/PhotoViewerFragment$PhotoCommentsAdapter;

    .line 1023
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1026
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/vkontakte/android/PhotoViewerFragment$PhotoCommentsAdapter$2;->this$1:Lcom/vkontakte/android/PhotoViewerFragment$PhotoCommentsAdapter;

    invoke-static {v1}, Lcom/vkontakte/android/PhotoViewerFragment$PhotoCommentsAdapter;->access$1(Lcom/vkontakte/android/PhotoViewerFragment$PhotoCommentsAdapter;)Lcom/vkontakte/android/PhotoViewerFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vkontakte/android/PhotoViewerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/vkontakte/android/WallActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1027
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "wall_id"

    iget-object v1, p0, Lcom/vkontakte/android/PhotoViewerFragment$PhotoCommentsAdapter$2;->this$1:Lcom/vkontakte/android/PhotoViewerFragment$PhotoCommentsAdapter;

    invoke-static {v1}, Lcom/vkontakte/android/PhotoViewerFragment$PhotoCommentsAdapter;->access$1(Lcom/vkontakte/android/PhotoViewerFragment$PhotoCommentsAdapter;)Lcom/vkontakte/android/PhotoViewerFragment;

    move-result-object v1

    invoke-static {v1}, Lcom/vkontakte/android/PhotoViewerFragment;->access$2(Lcom/vkontakte/android/PhotoViewerFragment;)Ljava/util/ArrayList;

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

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1028
    iget-object v1, p0, Lcom/vkontakte/android/PhotoViewerFragment$PhotoCommentsAdapter$2;->this$1:Lcom/vkontakte/android/PhotoViewerFragment$PhotoCommentsAdapter;

    invoke-static {v1}, Lcom/vkontakte/android/PhotoViewerFragment$PhotoCommentsAdapter;->access$1(Lcom/vkontakte/android/PhotoViewerFragment$PhotoCommentsAdapter;)Lcom/vkontakte/android/PhotoViewerFragment;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/vkontakte/android/PhotoViewerFragment;->startActivity(Landroid/content/Intent;)V

    .line 1029
    return-void
.end method
