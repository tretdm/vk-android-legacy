.class Lcom/vkontakte/android/fragments/DocumentsFragment$7;
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
    .line 360
    iput-object p1, p0, Lcom/vkontakte/android/fragments/DocumentsFragment$7;->this$0:Lcom/vkontakte/android/fragments/DocumentsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 4
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0x12c

    const/4 v2, 0x0

    .line 378
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DocumentsFragment$7;->this$0:Lcom/vkontakte/android/fragments/DocumentsFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/fragments/DocumentsFragment;->access$1302(Lcom/vkontakte/android/fragments/DocumentsFragment;Lcom/vkontakte/android/APIRequest;)Lcom/vkontakte/android/APIRequest;

    .line 379
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DocumentsFragment$7;->this$0:Lcom/vkontakte/android/fragments/DocumentsFragment;

    iput-boolean v2, v0, Lcom/vkontakte/android/fragments/DocumentsFragment;->dataLoading:Z

    .line 380
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DocumentsFragment$7;->this$0:Lcom/vkontakte/android/fragments/DocumentsFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/DocumentsFragment;->access$100(Lcom/vkontakte/android/fragments/DocumentsFragment;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 381
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DocumentsFragment$7;->this$0:Lcom/vkontakte/android/fragments/DocumentsFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/DocumentsFragment;->access$700(Lcom/vkontakte/android/fragments/DocumentsFragment;)Lcom/vkontakte/android/ui/ErrorView;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/vkontakte/android/ui/ErrorView;->setErrorInfo(ILjava/lang/String;)V

    .line 382
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DocumentsFragment$7;->this$0:Lcom/vkontakte/android/fragments/DocumentsFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/DocumentsFragment;->access$700(Lcom/vkontakte/android/fragments/DocumentsFragment;)Lcom/vkontakte/android/ui/ErrorView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1, v3}, Lcom/vkontakte/android/Global;->showViewAnimated(Landroid/view/View;ZI)V

    .line 383
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DocumentsFragment$7;->this$0:Lcom/vkontakte/android/fragments/DocumentsFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/DocumentsFragment;->access$800(Lcom/vkontakte/android/fragments/DocumentsFragment;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-static {v0, v2, v3}, Lcom/vkontakte/android/Global;->showViewAnimated(Landroid/view/View;ZI)V

    .line 387
    :goto_0
    return-void

    .line 385
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DocumentsFragment$7;->this$0:Lcom/vkontakte/android/fragments/DocumentsFragment;

    invoke-virtual {v0}, Lcom/vkontakte/android/fragments/DocumentsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0d00ce

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public success(ILjava/util/Vector;Z)V
    .locals 4
    .param p1, "total"    # I
    .param p3, "add"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Vector",
            "<",
            "Lcom/vkontakte/android/api/Document;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .local p2, "docs":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/api/Document;>;"
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 363
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DocumentsFragment$7;->this$0:Lcom/vkontakte/android/fragments/DocumentsFragment;

    invoke-static {v0, p3}, Lcom/vkontakte/android/fragments/DocumentsFragment;->access$1002(Lcom/vkontakte/android/fragments/DocumentsFragment;Z)Z

    .line 364
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DocumentsFragment$7;->this$0:Lcom/vkontakte/android/fragments/DocumentsFragment;

    invoke-virtual {v0}, Lcom/vkontakte/android/fragments/DocumentsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 365
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DocumentsFragment$7;->this$0:Lcom/vkontakte/android/fragments/DocumentsFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/DocumentsFragment;->access$100(Lcom/vkontakte/android/fragments/DocumentsFragment;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    .line 366
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DocumentsFragment$7;->this$0:Lcom/vkontakte/android/fragments/DocumentsFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/DocumentsFragment;->access$800(Lcom/vkontakte/android/fragments/DocumentsFragment;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 367
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DocumentsFragment$7;->this$0:Lcom/vkontakte/android/fragments/DocumentsFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/DocumentsFragment;->access$400(Lcom/vkontakte/android/fragments/DocumentsFragment;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 368
    iget-object v3, p0, Lcom/vkontakte/android/fragments/DocumentsFragment$7;->this$0:Lcom/vkontakte/android/fragments/DocumentsFragment;

    iget-object v0, p0, Lcom/vkontakte/android/fragments/DocumentsFragment$7;->this$0:Lcom/vkontakte/android/fragments/DocumentsFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/DocumentsFragment;->access$100(Lcom/vkontakte/android/fragments/DocumentsFragment;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v0, p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, v3, Lcom/vkontakte/android/fragments/DocumentsFragment;->moreAvailable:Z

    .line 369
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DocumentsFragment$7;->this$0:Lcom/vkontakte/android/fragments/DocumentsFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/DocumentsFragment;->access$1100(Lcom/vkontakte/android/fragments/DocumentsFragment;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    iget-object v0, p0, Lcom/vkontakte/android/fragments/DocumentsFragment$7;->this$0:Lcom/vkontakte/android/fragments/DocumentsFragment;

    iget-boolean v0, v0, Lcom/vkontakte/android/fragments/DocumentsFragment;->moreAvailable:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 370
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DocumentsFragment$7;->this$0:Lcom/vkontakte/android/fragments/DocumentsFragment;

    invoke-virtual {v0}, Lcom/vkontakte/android/fragments/DocumentsFragment;->updateList()V

    .line 371
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DocumentsFragment$7;->this$0:Lcom/vkontakte/android/fragments/DocumentsFragment;

    iput-boolean v1, v0, Lcom/vkontakte/android/fragments/DocumentsFragment;->dataLoading:Z

    .line 372
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/fragments/DocumentsFragment$7;->this$0:Lcom/vkontakte/android/fragments/DocumentsFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/DocumentsFragment;->access$1200(Lcom/vkontakte/android/fragments/DocumentsFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 373
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DocumentsFragment$7;->this$0:Lcom/vkontakte/android/fragments/DocumentsFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/fragments/DocumentsFragment;->access$1302(Lcom/vkontakte/android/fragments/DocumentsFragment;Lcom/vkontakte/android/APIRequest;)Lcom/vkontakte/android/APIRequest;

    .line 374
    return-void

    :cond_1
    move v0, v1

    .line 368
    goto :goto_0

    :cond_2
    move v0, v2

    .line 369
    goto :goto_1
.end method
