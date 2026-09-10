.class Lcom/vkontakte/android/fragments/PostListFragment$3;
.super Ljava/lang/Object;
.source "PostListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/PostListFragment;->onAttach(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/PostListFragment;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/PostListFragment;)V
    .locals 0

    .prologue
    .line 158
    iput-object p1, p0, Lcom/vkontakte/android/fragments/PostListFragment$3;->this$0:Lcom/vkontakte/android/fragments/PostListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 161
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostListFragment$3;->this$0:Lcom/vkontakte/android/fragments/PostListFragment;

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostListFragment;->list:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostListFragment$3;->this$0:Lcom/vkontakte/android/fragments/PostListFragment;

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostListFragment;->list:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 163
    :cond_0
    return-void
.end method
