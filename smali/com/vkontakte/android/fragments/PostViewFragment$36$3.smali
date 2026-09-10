.class Lcom/vkontakte/android/fragments/PostViewFragment$36$3;
.super Ljava/lang/Object;
.source "PostViewFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/PostViewFragment$36;->fail(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/fragments/PostViewFragment$36;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/PostViewFragment$36;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/fragments/PostViewFragment$36$3;->this$1:Lcom/vkontakte/android/fragments/PostViewFragment$36;

    .line 1689
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1691
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment$36$3;->this$1:Lcom/vkontakte/android/fragments/PostViewFragment$36;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/PostViewFragment$36;->access$0(Lcom/vkontakte/android/fragments/PostViewFragment$36;)Lcom/vkontakte/android/fragments/PostViewFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/fragments/PostViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f080068

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1692
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment$36$3;->this$1:Lcom/vkontakte/android/fragments/PostViewFragment$36;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/PostViewFragment$36;->access$0(Lcom/vkontakte/android/fragments/PostViewFragment$36;)Lcom/vkontakte/android/fragments/PostViewFragment;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$1(Lcom/vkontakte/android/fragments/PostViewFragment;)V

    .line 1693
    return-void
.end method
