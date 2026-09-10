.class Lcom/vkontakte/android/fragments/PostListFragment$1;
.super Ljava/lang/Object;
.source "PostListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/fragments/PostListFragment;
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
    .line 69
    iput-object p1, p0, Lcom/vkontakte/android/fragments/PostListFragment$1;->this$0:Lcom/vkontakte/android/fragments/PostListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 72
    iget-object v1, p0, Lcom/vkontakte/android/fragments/PostListFragment$1;->this$0:Lcom/vkontakte/android/fragments/PostListFragment;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/NewsEntry;

    invoke-static {v1, p1, v0}, Lcom/vkontakte/android/fragments/PostListFragment;->access$000(Lcom/vkontakte/android/fragments/PostListFragment;Landroid/view/View;Lcom/vkontakte/android/NewsEntry;)V

    .line 73
    return-void
.end method
