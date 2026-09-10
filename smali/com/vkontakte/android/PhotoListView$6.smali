.class Lcom/vkontakte/android/PhotoListView$6;
.super Ljava/lang/Object;
.source "PhotoListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/PhotoListView;->updateList()V
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
    iput-object p1, p0, Lcom/vkontakte/android/PhotoListView$6;->this$0:Lcom/vkontakte/android/PhotoListView;

    .line 279
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 280
    iget-object v0, p0, Lcom/vkontakte/android/PhotoListView$6;->this$0:Lcom/vkontakte/android/PhotoListView;

    invoke-static {v0}, Lcom/vkontakte/android/PhotoListView;->access$9(Lcom/vkontakte/android/PhotoListView;)Lcom/vkontakte/android/ui/ListImageLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/ListImageLoader;->cancel()V

    .line 281
    iget-object v0, p0, Lcom/vkontakte/android/PhotoListView$6;->this$0:Lcom/vkontakte/android/PhotoListView;

    invoke-static {v0}, Lcom/vkontakte/android/PhotoListView;->access$17(Lcom/vkontakte/android/PhotoListView;)Lcom/vkontakte/android/PhotoListView$PhotosAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/PhotoListView$PhotosAdapter;->notifyDataSetChanged()V

    .line 282
    iget-object v0, p0, Lcom/vkontakte/android/PhotoListView$6;->this$0:Lcom/vkontakte/android/PhotoListView;

    invoke-static {v0}, Lcom/vkontakte/android/PhotoListView;->access$9(Lcom/vkontakte/android/PhotoListView;)Lcom/vkontakte/android/ui/ListImageLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/PhotoListView$6;->this$0:Lcom/vkontakte/android/PhotoListView;

    invoke-static {v1}, Lcom/vkontakte/android/PhotoListView;->access$10(Lcom/vkontakte/android/PhotoListView;)I

    move-result v1

    iget-object v2, p0, Lcom/vkontakte/android/PhotoListView$6;->this$0:Lcom/vkontakte/android/PhotoListView;

    invoke-static {v2}, Lcom/vkontakte/android/PhotoListView;->access$11(Lcom/vkontakte/android/PhotoListView;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/vkontakte/android/ui/ListImageLoader;->load(II)V

    .line 283
    iget-object v0, p0, Lcom/vkontakte/android/PhotoListView$6;->this$0:Lcom/vkontakte/android/PhotoListView;

    invoke-static {v0}, Lcom/vkontakte/android/PhotoListView;->access$16(Lcom/vkontakte/android/PhotoListView;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v0, p0, Lcom/vkontakte/android/PhotoListView$6;->this$0:Lcom/vkontakte/android/PhotoListView;

    invoke-static {v0}, Lcom/vkontakte/android/PhotoListView;->access$18(Lcom/vkontakte/android/PhotoListView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/PhotoListView$6;->this$0:Lcom/vkontakte/android/PhotoListView;

    invoke-static {v0}, Lcom/vkontakte/android/PhotoListView;->access$2(Lcom/vkontakte/android/PhotoListView;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/vkontakte/android/PhotoListView$6;->this$0:Lcom/vkontakte/android/PhotoListView;

    invoke-static {v0}, Lcom/vkontakte/android/PhotoListView;->access$19(Lcom/vkontakte/android/PhotoListView;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 284
    return-void

    .line 283
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
