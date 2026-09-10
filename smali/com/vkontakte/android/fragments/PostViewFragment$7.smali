.class Lcom/vkontakte/android/fragments/PostViewFragment$7;
.super Ljava/lang/Object;
.source "PostViewFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/PostViewFragment;->onAttach(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/PostViewFragment;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/PostViewFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/fragments/PostViewFragment$7;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    .line 496
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 499
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment$7;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$14(Lcom/vkontakte/android/fragments/PostViewFragment;)Lcom/vkontakte/android/LoadMoreCommentsView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/LoadMoreCommentsView;->showProgress(Z)V

    .line 500
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment$7;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$15(Lcom/vkontakte/android/fragments/PostViewFragment;)V

    .line 501
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment$7;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$16(Lcom/vkontakte/android/fragments/PostViewFragment;Z)V

    .line 502
    return-void
.end method
