.class Lcom/vkontakte/android/PhotoListView$4;
.super Ljava/lang/Object;
.source "PhotoListView.java"

# interfaces
.implements Lcom/vkontakte/android/api/PhotosGet$Callback;


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
    iput-object p1, p0, Lcom/vkontakte/android/PhotoListView$4;->this$0:Lcom/vkontakte/android/PhotoListView;

    .line 217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 2
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 229
    iget-object v0, p0, Lcom/vkontakte/android/PhotoListView$4;->this$0:Lcom/vkontakte/android/PhotoListView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/PhotoListView;->access$12(Lcom/vkontakte/android/PhotoListView;Z)V

    .line 230
    iget-object v0, p0, Lcom/vkontakte/android/PhotoListView$4;->this$0:Lcom/vkontakte/android/PhotoListView;

    invoke-static {v0}, Lcom/vkontakte/android/PhotoListView;->access$14(Lcom/vkontakte/android/PhotoListView;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 231
    return-void
.end method

.method public success(Ljava/util/Vector;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Lcom/vkontakte/android/Photo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "photos":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/Photo;>;"
    const/16 v1, 0x8

    const/4 v0, 0x0

    .line 220
    iget-object v2, p0, Lcom/vkontakte/android/PhotoListView$4;->this$0:Lcom/vkontakte/android/PhotoListView;

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v3

    iput v3, v2, Lcom/vkontakte/android/PhotoListView;->total:I

    .line 221
    iget-object v2, p0, Lcom/vkontakte/android/PhotoListView$4;->this$0:Lcom/vkontakte/android/PhotoListView;

    invoke-static {v2, v0}, Lcom/vkontakte/android/PhotoListView;->access$12(Lcom/vkontakte/android/PhotoListView;Z)V

    .line 222
    iget-object v2, p0, Lcom/vkontakte/android/PhotoListView$4;->this$0:Lcom/vkontakte/android/PhotoListView;

    invoke-virtual {v2, p1, v0}, Lcom/vkontakte/android/PhotoListView;->appendList(Ljava/util/Vector;I)V

    .line 223
    iget-object v2, p0, Lcom/vkontakte/android/PhotoListView$4;->this$0:Lcom/vkontakte/android/PhotoListView;

    invoke-static {v2}, Lcom/vkontakte/android/PhotoListView;->access$14(Lcom/vkontakte/android/PhotoListView;)Landroid/widget/ProgressBar;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 224
    iget-object v2, p0, Lcom/vkontakte/android/PhotoListView$4;->this$0:Lcom/vkontakte/android/PhotoListView;

    invoke-static {v2}, Lcom/vkontakte/android/PhotoListView;->access$15(Lcom/vkontakte/android/PhotoListView;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/vkontakte/android/PhotoListView$4;->this$0:Lcom/vkontakte/android/PhotoListView;

    iget v3, v3, Lcom/vkontakte/android/PhotoListView;->total:I

    if-nez v3, :cond_0

    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 225
    return-void

    :cond_0
    move v0, v1

    .line 224
    goto :goto_0
.end method
