.class Lcom/vkontakte/android/PhotoListView$2;
.super Ljava/lang/Object;
.source "PhotoListView.java"

# interfaces
.implements Lcom/vkontakte/android/api/PhotosGetAll$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/PhotoListView;->loadData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/PhotoListView;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/PhotoListView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/PhotoListView$2;->this$0:Lcom/vkontakte/android/PhotoListView;

    .line 170
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

    .line 183
    iget-object v0, p0, Lcom/vkontakte/android/PhotoListView$2;->this$0:Lcom/vkontakte/android/PhotoListView;

    invoke-static {v0, v2}, Lcom/vkontakte/android/PhotoListView;->access$12(Lcom/vkontakte/android/PhotoListView;Z)V

    .line 184
    iget-object v0, p0, Lcom/vkontakte/android/PhotoListView$2;->this$0:Lcom/vkontakte/android/PhotoListView;

    invoke-static {v0}, Lcom/vkontakte/android/PhotoListView;->access$14(Lcom/vkontakte/android/PhotoListView;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 185
    iget-object v0, p0, Lcom/vkontakte/android/PhotoListView$2;->this$0:Lcom/vkontakte/android/PhotoListView;

    invoke-static {v0}, Lcom/vkontakte/android/PhotoListView;->access$15(Lcom/vkontakte/android/PhotoListView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 186
    iget-object v0, p0, Lcom/vkontakte/android/PhotoListView$2;->this$0:Lcom/vkontakte/android/PhotoListView;

    invoke-static {v0}, Lcom/vkontakte/android/PhotoListView;->access$15(Lcom/vkontakte/android/PhotoListView;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f090052

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 187
    return-void
.end method

.method public success(ILjava/util/Vector;)V
    .locals 5
    .param p1, "total"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Vector",
            "<",
            "Lcom/vkontakte/android/Photo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "photos":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/Photo;>;"
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 173
    iget-object v0, p0, Lcom/vkontakte/android/PhotoListView$2;->this$0:Lcom/vkontakte/android/PhotoListView;

    iput p1, v0, Lcom/vkontakte/android/PhotoListView;->total:I

    .line 174
    iget-object v0, p0, Lcom/vkontakte/android/PhotoListView$2;->this$0:Lcom/vkontakte/android/PhotoListView;

    invoke-static {v0, v1}, Lcom/vkontakte/android/PhotoListView;->access$12(Lcom/vkontakte/android/PhotoListView;Z)V

    .line 175
    iget-object v3, p0, Lcom/vkontakte/android/PhotoListView$2;->this$0:Lcom/vkontakte/android/PhotoListView;

    invoke-virtual {p2}, Ljava/util/Vector;->size()I

    move-result v0

    iget-object v4, p0, Lcom/vkontakte/android/PhotoListView$2;->this$0:Lcom/vkontakte/android/PhotoListView;

    invoke-static {v4}, Lcom/vkontakte/android/PhotoListView;->access$1(Lcom/vkontakte/android/PhotoListView;)Ljava/util/Vector;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    add-int/2addr v0, v4

    if-le p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v3, v0}, Lcom/vkontakte/android/PhotoListView;->access$13(Lcom/vkontakte/android/PhotoListView;Z)V

    .line 176
    iget-object v0, p0, Lcom/vkontakte/android/PhotoListView$2;->this$0:Lcom/vkontakte/android/PhotoListView;

    invoke-virtual {v0, p2, v1}, Lcom/vkontakte/android/PhotoListView;->appendList(Ljava/util/Vector;I)V

    .line 177
    iget-object v0, p0, Lcom/vkontakte/android/PhotoListView$2;->this$0:Lcom/vkontakte/android/PhotoListView;

    invoke-static {v0}, Lcom/vkontakte/android/PhotoListView;->access$14(Lcom/vkontakte/android/PhotoListView;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 178
    iget-object v0, p0, Lcom/vkontakte/android/PhotoListView$2;->this$0:Lcom/vkontakte/android/PhotoListView;

    invoke-static {v0}, Lcom/vkontakte/android/PhotoListView;->access$15(Lcom/vkontakte/android/PhotoListView;)Landroid/widget/TextView;

    move-result-object v0

    if-nez p1, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 179
    return-void

    :cond_0
    move v0, v1

    .line 175
    goto :goto_0

    :cond_1
    move v1, v2

    .line 178
    goto :goto_1
.end method
