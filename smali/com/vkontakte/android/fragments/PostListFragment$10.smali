.class Lcom/vkontakte/android/fragments/PostListFragment$10;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PostListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/PostListFragment;->onDataLoaded(Ljava/util/List;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/PostListFragment;

.field final synthetic val$d:Ljava/util/List;

.field final synthetic val$more:Z


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/PostListFragment;Ljava/util/List;Z)V
    .locals 0

    .prologue
    .line 629
    iput-object p1, p0, Lcom/vkontakte/android/fragments/PostListFragment$10;->this$0:Lcom/vkontakte/android/fragments/PostListFragment;

    iput-object p2, p0, Lcom/vkontakte/android/fragments/PostListFragment$10;->val$d:Ljava/util/List;

    iput-boolean p3, p0, Lcom/vkontakte/android/fragments/PostListFragment$10;->val$more:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "anim"    # Landroid/animation/Animator;

    .prologue
    .line 631
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostListFragment$10;->this$0:Lcom/vkontakte/android/fragments/PostListFragment;

    iget-object v1, p0, Lcom/vkontakte/android/fragments/PostListFragment$10;->val$d:Ljava/util/List;

    iget-boolean v2, p0, Lcom/vkontakte/android/fragments/PostListFragment$10;->val$more:Z

    invoke-static {v0, v1, v2}, Lcom/vkontakte/android/fragments/PostListFragment;->access$301(Lcom/vkontakte/android/fragments/PostListFragment;Ljava/util/List;Z)V

    .line 632
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostListFragment$10;->this$0:Lcom/vkontakte/android/fragments/PostListFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/PostListFragment;->access$400(Lcom/vkontakte/android/fragments/PostListFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 633
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostListFragment$10;->this$0:Lcom/vkontakte/android/fragments/PostListFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/PostListFragment;->access$500(Lcom/vkontakte/android/fragments/PostListFragment;)V

    .line 634
    return-void
.end method
