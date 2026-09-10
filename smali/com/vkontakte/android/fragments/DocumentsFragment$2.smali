.class Lcom/vkontakte/android/fragments/DocumentsFragment$2;
.super Ljava/lang/Object;
.source "DocumentsFragment.java"

# interfaces
.implements Lcom/vkontakte/android/api/DocsGet$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/DocumentsFragment;->loadData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/DocumentsFragment;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/DocumentsFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/fragments/DocumentsFragment$2;->this$0:Lcom/vkontakte/android/fragments/DocumentsFragment;

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 3
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 177
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DocumentsFragment$2;->this$0:Lcom/vkontakte/android/fragments/DocumentsFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/fragments/DocumentsFragment;->access$8(Lcom/vkontakte/android/fragments/DocumentsFragment;Lcom/vkontakte/android/APIRequest;)V

    .line 178
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DocumentsFragment$2;->this$0:Lcom/vkontakte/android/fragments/DocumentsFragment;

    iput-boolean v2, v0, Lcom/vkontakte/android/fragments/DocumentsFragment;->dataLoading:Z

    .line 179
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DocumentsFragment$2;->this$0:Lcom/vkontakte/android/fragments/DocumentsFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/DocumentsFragment;->access$5(Lcom/vkontakte/android/fragments/DocumentsFragment;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 180
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DocumentsFragment$2;->this$0:Lcom/vkontakte/android/fragments/DocumentsFragment;

    invoke-virtual {v0}, Lcom/vkontakte/android/fragments/DocumentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f060051

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 181
    return-void
.end method

.method public success(ILjava/util/Vector;)V
    .locals 4
    .param p1, "total"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Vector",
            "<",
            "Lcom/vkontakte/android/api/Document;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "docs":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/api/Document;>;"
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 165
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DocumentsFragment$2;->this$0:Lcom/vkontakte/android/fragments/DocumentsFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/DocumentsFragment;->access$0(Lcom/vkontakte/android/fragments/DocumentsFragment;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    .line 166
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DocumentsFragment$2;->this$0:Lcom/vkontakte/android/fragments/DocumentsFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/DocumentsFragment;->access$5(Lcom/vkontakte/android/fragments/DocumentsFragment;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 167
    iget-object v3, p0, Lcom/vkontakte/android/fragments/DocumentsFragment$2;->this$0:Lcom/vkontakte/android/fragments/DocumentsFragment;

    iget-object v0, p0, Lcom/vkontakte/android/fragments/DocumentsFragment$2;->this$0:Lcom/vkontakte/android/fragments/DocumentsFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/DocumentsFragment;->access$0(Lcom/vkontakte/android/fragments/DocumentsFragment;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v0, p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, v3, Lcom/vkontakte/android/fragments/DocumentsFragment;->moreAvailable:Z

    .line 168
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DocumentsFragment$2;->this$0:Lcom/vkontakte/android/fragments/DocumentsFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/DocumentsFragment;->access$6(Lcom/vkontakte/android/fragments/DocumentsFragment;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    iget-object v0, p0, Lcom/vkontakte/android/fragments/DocumentsFragment$2;->this$0:Lcom/vkontakte/android/fragments/DocumentsFragment;

    iget-boolean v0, v0, Lcom/vkontakte/android/fragments/DocumentsFragment;->moreAvailable:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 169
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DocumentsFragment$2;->this$0:Lcom/vkontakte/android/fragments/DocumentsFragment;

    invoke-virtual {v0}, Lcom/vkontakte/android/fragments/DocumentsFragment;->updateList()V

    .line 170
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DocumentsFragment$2;->this$0:Lcom/vkontakte/android/fragments/DocumentsFragment;

    iput-boolean v1, v0, Lcom/vkontakte/android/fragments/DocumentsFragment;->dataLoading:Z

    .line 171
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/fragments/DocumentsFragment$2;->this$0:Lcom/vkontakte/android/fragments/DocumentsFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/DocumentsFragment;->access$7(Lcom/vkontakte/android/fragments/DocumentsFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DocumentsFragment$2;->this$0:Lcom/vkontakte/android/fragments/DocumentsFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/fragments/DocumentsFragment;->access$8(Lcom/vkontakte/android/fragments/DocumentsFragment;Lcom/vkontakte/android/APIRequest;)V

    .line 173
    return-void

    :cond_1
    move v0, v1

    .line 167
    goto :goto_0

    :cond_2
    move v0, v2

    .line 168
    goto :goto_1
.end method
