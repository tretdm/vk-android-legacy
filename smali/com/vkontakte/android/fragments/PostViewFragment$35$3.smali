.class Lcom/vkontakte/android/fragments/PostViewFragment$35$3;
.super Ljava/lang/Object;
.source "PostViewFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/PostViewFragment$35;->fail(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/fragments/PostViewFragment$35;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/PostViewFragment$35;)V
    .locals 0

    .prologue
    .line 1519
    iput-object p1, p0, Lcom/vkontakte/android/fragments/PostViewFragment$35$3;->this$1:Lcom/vkontakte/android/fragments/PostViewFragment$35;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1521
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment$35$3;->this$1:Lcom/vkontakte/android/fragments/PostViewFragment$35;

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment$35;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-virtual {v0}, Lcom/vkontakte/android/fragments/PostViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0d00d0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1522
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment$35$3;->this$1:Lcom/vkontakte/android/fragments/PostViewFragment$35;

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PostViewFragment$35;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$100(Lcom/vkontakte/android/fragments/PostViewFragment;)V

    .line 1523
    return-void
.end method
