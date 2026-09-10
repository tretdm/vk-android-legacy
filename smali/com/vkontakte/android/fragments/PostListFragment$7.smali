.class Lcom/vkontakte/android/fragments/PostListFragment$7;
.super Ljava/lang/Object;
.source "PostListFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/PostListFragment;->performPostAction(Ljava/lang/String;Lcom/vkontakte/android/NewsEntry;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/PostListFragment;

.field final synthetic val$e:Lcom/vkontakte/android/NewsEntry;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/PostListFragment;Lcom/vkontakte/android/NewsEntry;)V
    .locals 0

    .prologue
    .line 477
    iput-object p1, p0, Lcom/vkontakte/android/fragments/PostListFragment$7;->this$0:Lcom/vkontakte/android/fragments/PostListFragment;

    iput-object p2, p0, Lcom/vkontakte/android/fragments/PostListFragment$7;->val$e:Lcom/vkontakte/android/NewsEntry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 480
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostListFragment$7;->val$e:Lcom/vkontakte/android/NewsEntry;

    iget-object v1, p0, Lcom/vkontakte/android/fragments/PostListFragment$7;->this$0:Lcom/vkontakte/android/fragments/PostListFragment;

    invoke-virtual {v1}, Lcom/vkontakte/android/fragments/PostListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vkontakte/android/data/Posts;->deletePost(Lcom/vkontakte/android/NewsEntry;Landroid/app/Activity;)V

    .line 481
    return-void
.end method
