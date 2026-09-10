.class Lcom/vkontakte/android/fragments/DocumentsFragment$6;
.super Ljava/lang/Object;
.source "DocumentsFragment.java"

# interfaces
.implements Lcom/vkontakte/android/api/DocsDelete$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/DocumentsFragment;->doDelete(Lcom/vkontakte/android/api/Document;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/DocumentsFragment;

.field final synthetic val$doc:Lcom/vkontakte/android/api/Document;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/DocumentsFragment;Lcom/vkontakte/android/api/Document;)V
    .locals 0

    .prologue
    .line 303
    iput-object p1, p0, Lcom/vkontakte/android/fragments/DocumentsFragment$6;->this$0:Lcom/vkontakte/android/fragments/DocumentsFragment;

    iput-object p2, p0, Lcom/vkontakte/android/fragments/DocumentsFragment$6;->val$doc:Lcom/vkontakte/android/api/Document;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 3
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 313
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DocumentsFragment$6;->this$0:Lcom/vkontakte/android/fragments/DocumentsFragment;

    invoke-virtual {v0}, Lcom/vkontakte/android/fragments/DocumentsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const v0, 0x7f0d00ce

    :goto_0
    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 314
    return-void

    .line 313
    :cond_0
    const v0, 0x7f0d00d0

    goto :goto_0
.end method

.method public success()V
    .locals 2

    .prologue
    .line 307
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DocumentsFragment$6;->this$0:Lcom/vkontakte/android/fragments/DocumentsFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/DocumentsFragment;->access$100(Lcom/vkontakte/android/fragments/DocumentsFragment;)Ljava/util/Vector;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/fragments/DocumentsFragment$6;->val$doc:Lcom/vkontakte/android/api/Document;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 308
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DocumentsFragment$6;->this$0:Lcom/vkontakte/android/fragments/DocumentsFragment;

    invoke-virtual {v0}, Lcom/vkontakte/android/fragments/DocumentsFragment;->updateList()V

    .line 309
    return-void
.end method
