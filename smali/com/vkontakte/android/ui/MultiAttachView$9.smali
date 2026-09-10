.class Lcom/vkontakte/android/ui/MultiAttachView$9;
.super Ljava/lang/Object;
.source "MultiAttachView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/ui/MultiAttachView;->remove(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/ui/MultiAttachView;

.field private final synthetic val$i:I


# direct methods
.method constructor <init>(Lcom/vkontakte/android/ui/MultiAttachView;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/ui/MultiAttachView$9;->this$0:Lcom/vkontakte/android/ui/MultiAttachView;

    iput p2, p0, Lcom/vkontakte/android/ui/MultiAttachView$9;->val$i:I

    .line 434
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 435
    iget-object v2, p0, Lcom/vkontakte/android/ui/MultiAttachView$9;->this$0:Lcom/vkontakte/android/ui/MultiAttachView;

    iget-object v2, v2, Lcom/vkontakte/android/ui/MultiAttachView;->layout:Landroid/widget/LinearLayout;

    iget v3, p0, Lcom/vkontakte/android/ui/MultiAttachView$9;->val$i:I

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    .line 436
    iget v2, p0, Lcom/vkontakte/android/ui/MultiAttachView$9;->val$i:I

    iget-object v3, p0, Lcom/vkontakte/android/ui/MultiAttachView$9;->this$0:Lcom/vkontakte/android/ui/MultiAttachView;

    invoke-static {v3}, Lcom/vkontakte/android/ui/MultiAttachView;->access$4(Lcom/vkontakte/android/ui/MultiAttachView;)Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 437
    iget-object v2, p0, Lcom/vkontakte/android/ui/MultiAttachView$9;->this$0:Lcom/vkontakte/android/ui/MultiAttachView;

    invoke-static {v2}, Lcom/vkontakte/android/ui/MultiAttachView;->access$4(Lcom/vkontakte/android/ui/MultiAttachView;)Ljava/util/Vector;

    move-result-object v2

    iget v3, p0, Lcom/vkontakte/android/ui/MultiAttachView$9;->val$i:I

    invoke-virtual {v2, v3}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 438
    .local v1, "uri":Ljava/lang/String;
    iget v2, p0, Lcom/vkontakte/android/ui/MultiAttachView$9;->val$i:I

    iget-object v3, p0, Lcom/vkontakte/android/ui/MultiAttachView$9;->this$0:Lcom/vkontakte/android/ui/MultiAttachView;

    invoke-static {v3}, Lcom/vkontakte/android/ui/MultiAttachView;->access$5(Lcom/vkontakte/android/ui/MultiAttachView;)Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    iget-object v2, p0, Lcom/vkontakte/android/ui/MultiAttachView$9;->this$0:Lcom/vkontakte/android/ui/MultiAttachView;

    invoke-static {v2}, Lcom/vkontakte/android/ui/MultiAttachView;->access$5(Lcom/vkontakte/android/ui/MultiAttachView;)Ljava/util/Vector;

    move-result-object v2

    iget v3, p0, Lcom/vkontakte/android/ui/MultiAttachView$9;->val$i:I

    invoke-virtual {v2, v3}, Ljava/util/Vector;->removeElementAt(I)V

    .line 439
    :cond_0
    iget-object v2, p0, Lcom/vkontakte/android/ui/MultiAttachView$9;->this$0:Lcom/vkontakte/android/ui/MultiAttachView;

    invoke-static {v2}, Lcom/vkontakte/android/ui/MultiAttachView;->access$0(Lcom/vkontakte/android/ui/MultiAttachView;)Lcom/vkontakte/android/ui/MultiAttachView$AttachActionListener;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 440
    iget-object v2, p0, Lcom/vkontakte/android/ui/MultiAttachView$9;->this$0:Lcom/vkontakte/android/ui/MultiAttachView;

    invoke-static {v2}, Lcom/vkontakte/android/ui/MultiAttachView;->access$0(Lcom/vkontakte/android/ui/MultiAttachView;)Lcom/vkontakte/android/ui/MultiAttachView$AttachActionListener;

    move-result-object v2

    instance-of v2, v2, Lcom/vkontakte/android/ui/MultiAttachView$AttachActionListener2;

    if-eqz v2, :cond_1

    .line 441
    iget-object v2, p0, Lcom/vkontakte/android/ui/MultiAttachView$9;->this$0:Lcom/vkontakte/android/ui/MultiAttachView;

    invoke-static {v2}, Lcom/vkontakte/android/ui/MultiAttachView;->access$0(Lcom/vkontakte/android/ui/MultiAttachView;)Lcom/vkontakte/android/ui/MultiAttachView$AttachActionListener;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/ui/MultiAttachView$AttachActionListener2;

    invoke-interface {v2}, Lcom/vkontakte/android/ui/MultiAttachView$AttachActionListener2;->onUpdateBitmaps()V

    .line 442
    iget-object v2, p0, Lcom/vkontakte/android/ui/MultiAttachView$9;->this$0:Lcom/vkontakte/android/ui/MultiAttachView;

    invoke-static {v2}, Lcom/vkontakte/android/ui/MultiAttachView;->access$0(Lcom/vkontakte/android/ui/MultiAttachView;)Lcom/vkontakte/android/ui/MultiAttachView$AttachActionListener;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/ui/MultiAttachView$AttachActionListener2;

    invoke-interface {v2, v1}, Lcom/vkontakte/android/ui/MultiAttachView$AttachActionListener2;->onAttachmentRemoved(Ljava/lang/String;)V

    .line 448
    .end local v1    # "uri":Ljava/lang/String;
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/vkontakte/android/ui/MultiAttachView$9;->this$0:Lcom/vkontakte/android/ui/MultiAttachView;

    invoke-static {v2}, Lcom/vkontakte/android/ui/MultiAttachView;->access$4(Lcom/vkontakte/android/ui/MultiAttachView;)Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    const/16 v3, 0xa

    if-ge v2, v3, :cond_2

    iget-object v2, p0, Lcom/vkontakte/android/ui/MultiAttachView$9;->this$0:Lcom/vkontakte/android/ui/MultiAttachView;

    invoke-static {v2}, Lcom/vkontakte/android/ui/MultiAttachView;->access$8(Lcom/vkontakte/android/ui/MultiAttachView;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 449
    :cond_2
    iget-object v2, p0, Lcom/vkontakte/android/ui/MultiAttachView$9;->this$0:Lcom/vkontakte/android/ui/MultiAttachView;

    invoke-static {v2}, Lcom/vkontakte/android/ui/MultiAttachView;->access$4(Lcom/vkontakte/android/ui/MultiAttachView;)Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/vkontakte/android/ui/MultiAttachView$9;->this$0:Lcom/vkontakte/android/ui/MultiAttachView;

    invoke-static {v2}, Lcom/vkontakte/android/ui/MultiAttachView;->access$9(Lcom/vkontakte/android/ui/MultiAttachView;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/vkontakte/android/ui/MultiAttachView$9;->this$0:Lcom/vkontakte/android/ui/MultiAttachView;

    invoke-static {v2}, Lcom/vkontakte/android/ui/MultiAttachView;->access$0(Lcom/vkontakte/android/ui/MultiAttachView;)Lcom/vkontakte/android/ui/MultiAttachView$AttachActionListener;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/vkontakte/android/ui/MultiAttachView$9;->this$0:Lcom/vkontakte/android/ui/MultiAttachView;

    invoke-static {v2}, Lcom/vkontakte/android/ui/MultiAttachView;->access$0(Lcom/vkontakte/android/ui/MultiAttachView;)Lcom/vkontakte/android/ui/MultiAttachView$AttachActionListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/vkontakte/android/ui/MultiAttachView$AttachActionListener;->onAllAttachmentsRemoved()V

    .line 450
    :cond_3
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Lcom/vkontakte/android/ui/MultiAttachView$9;->this$0:Lcom/vkontakte/android/ui/MultiAttachView;

    iget-object v2, v2, Lcom/vkontakte/android/ui/MultiAttachView;->layout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-lt v0, v2, :cond_5

    .line 452
    iget-object v2, p0, Lcom/vkontakte/android/ui/MultiAttachView$9;->this$0:Lcom/vkontakte/android/ui/MultiAttachView;

    invoke-static {v2, v4}, Lcom/vkontakte/android/ui/MultiAttachView;->access$10(Lcom/vkontakte/android/ui/MultiAttachView;Z)V

    .line 453
    return-void

    .line 445
    .end local v0    # "i":I
    :cond_4
    iget-object v2, p0, Lcom/vkontakte/android/ui/MultiAttachView$9;->this$0:Lcom/vkontakte/android/ui/MultiAttachView;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/vkontakte/android/ui/MultiAttachView;->access$6(Lcom/vkontakte/android/ui/MultiAttachView;Lcom/vkontakte/android/GeoAttachment;)V

    .line 446
    iget-object v2, p0, Lcom/vkontakte/android/ui/MultiAttachView$9;->this$0:Lcom/vkontakte/android/ui/MultiAttachView;

    invoke-static {v2, v4}, Lcom/vkontakte/android/ui/MultiAttachView;->access$7(Lcom/vkontakte/android/ui/MultiAttachView;Z)V

    goto :goto_0

    .line 451
    .restart local v0    # "i":I
    :cond_5
    iget-object v2, p0, Lcom/vkontakte/android/ui/MultiAttachView$9;->this$0:Lcom/vkontakte/android/ui/MultiAttachView;

    iget-object v2, v2, Lcom/vkontakte/android/ui/MultiAttachView;->layout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 450
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
