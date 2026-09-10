.class Lcom/vkontakte/android/fragments/PostListFragment$6;
.super Ljava/lang/Object;
.source "PostListFragment.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/PostListFragment;->showItemOptions(Landroid/view/View;Lcom/vkontakte/android/NewsEntry;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/PostListFragment;

.field final synthetic val$acts:Ljava/util/ArrayList;

.field final synthetic val$e:Lcom/vkontakte/android/NewsEntry;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/PostListFragment;Ljava/util/ArrayList;Lcom/vkontakte/android/NewsEntry;)V
    .locals 0

    .prologue
    .line 424
    iput-object p1, p0, Lcom/vkontakte/android/fragments/PostListFragment$6;->this$0:Lcom/vkontakte/android/fragments/PostListFragment;

    iput-object p2, p0, Lcom/vkontakte/android/fragments/PostListFragment$6;->val$acts:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/vkontakte/android/fragments/PostListFragment$6;->val$e:Lcom/vkontakte/android/NewsEntry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 427
    iget-object v1, p0, Lcom/vkontakte/android/fragments/PostListFragment$6;->this$0:Lcom/vkontakte/android/fragments/PostListFragment;

    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostListFragment$6;->val$acts:Ljava/util/ArrayList;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/vkontakte/android/fragments/PostListFragment$6;->val$e:Lcom/vkontakte/android/NewsEntry;

    invoke-static {v1, v0, v2}, Lcom/vkontakte/android/fragments/PostListFragment;->access$200(Lcom/vkontakte/android/fragments/PostListFragment;Ljava/lang/String;Lcom/vkontakte/android/NewsEntry;)V

    .line 428
    const/4 v0, 0x1

    return v0
.end method
