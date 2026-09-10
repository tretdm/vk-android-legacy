.class Lcom/vkontakte/android/DocumentsActivity$2;
.super Ljava/lang/Object;
.source "DocumentsActivity.java"

# interfaces
.implements Lcom/vkontakte/android/api/DocsGet$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/DocumentsActivity;->loadData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/DocumentsActivity;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/DocumentsActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/DocumentsActivity$2;->this$0:Lcom/vkontakte/android/DocumentsActivity;

    .line 126
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

    .line 140
    iget-object v0, p0, Lcom/vkontakte/android/DocumentsActivity$2;->this$0:Lcom/vkontakte/android/DocumentsActivity;

    iput-boolean v2, v0, Lcom/vkontakte/android/DocumentsActivity;->dataLoading:Z

    .line 141
    iget-object v0, p0, Lcom/vkontakte/android/DocumentsActivity$2;->this$0:Lcom/vkontakte/android/DocumentsActivity;

    invoke-static {v0}, Lcom/vkontakte/android/DocumentsActivity;->access$3(Lcom/vkontakte/android/DocumentsActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 142
    iget-object v0, p0, Lcom/vkontakte/android/DocumentsActivity$2;->this$0:Lcom/vkontakte/android/DocumentsActivity;

    invoke-virtual {v0}, Lcom/vkontakte/android/DocumentsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f090058

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 143
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

    .line 129
    iget-object v0, p0, Lcom/vkontakte/android/DocumentsActivity$2;->this$0:Lcom/vkontakte/android/DocumentsActivity;

    invoke-static {v0}, Lcom/vkontakte/android/DocumentsActivity;->access$0(Lcom/vkontakte/android/DocumentsActivity;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    .line 130
    iget-object v0, p0, Lcom/vkontakte/android/DocumentsActivity$2;->this$0:Lcom/vkontakte/android/DocumentsActivity;

    invoke-static {v0}, Lcom/vkontakte/android/DocumentsActivity;->access$3(Lcom/vkontakte/android/DocumentsActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 131
    iget-object v3, p0, Lcom/vkontakte/android/DocumentsActivity$2;->this$0:Lcom/vkontakte/android/DocumentsActivity;

    iget-object v0, p0, Lcom/vkontakte/android/DocumentsActivity$2;->this$0:Lcom/vkontakte/android/DocumentsActivity;

    invoke-static {v0}, Lcom/vkontakte/android/DocumentsActivity;->access$0(Lcom/vkontakte/android/DocumentsActivity;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v0, p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, v3, Lcom/vkontakte/android/DocumentsActivity;->moreAvailable:Z

    .line 132
    iget-object v0, p0, Lcom/vkontakte/android/DocumentsActivity$2;->this$0:Lcom/vkontakte/android/DocumentsActivity;

    invoke-static {v0}, Lcom/vkontakte/android/DocumentsActivity;->access$4(Lcom/vkontakte/android/DocumentsActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    iget-object v0, p0, Lcom/vkontakte/android/DocumentsActivity$2;->this$0:Lcom/vkontakte/android/DocumentsActivity;

    iget-boolean v0, v0, Lcom/vkontakte/android/DocumentsActivity;->moreAvailable:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 133
    iget-object v0, p0, Lcom/vkontakte/android/DocumentsActivity$2;->this$0:Lcom/vkontakte/android/DocumentsActivity;

    invoke-virtual {v0}, Lcom/vkontakte/android/DocumentsActivity;->updateList()V

    .line 134
    iget-object v0, p0, Lcom/vkontakte/android/DocumentsActivity$2;->this$0:Lcom/vkontakte/android/DocumentsActivity;

    iput-boolean v1, v0, Lcom/vkontakte/android/DocumentsActivity;->dataLoading:Z

    .line 135
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/DocumentsActivity$2;->this$0:Lcom/vkontakte/android/DocumentsActivity;

    invoke-static {v0}, Lcom/vkontakte/android/DocumentsActivity;->access$5(Lcom/vkontakte/android/DocumentsActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 136
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 131
    goto :goto_0

    :cond_2
    move v0, v2

    .line 132
    goto :goto_1
.end method
