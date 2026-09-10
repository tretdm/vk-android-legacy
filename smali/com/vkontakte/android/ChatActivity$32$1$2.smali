.class Lcom/vkontakte/android/ChatActivity$32$1$2;
.super Ljava/lang/Object;
.source "ChatActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/ChatActivity$32$1;->uploadDone(Ljava/lang/String;Lcom/vkontakte/android/Attachment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/vkontakte/android/ChatActivity$32$1;

.field private final synthetic val$_i:I

.field private final synthetic val$att:Lcom/vkontakte/android/Attachment;

.field private final synthetic val$atts:[Ljava/lang/String;

.field private final synthetic val$itemID:Ljava/lang/String;

.field private final synthetic val$msg:Ljava/lang/String;

.field private final synthetic val$pdlg:Landroid/app/ProgressDialog;

.field private final synthetic val$thumbs:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/ChatActivity$32$1;Lcom/vkontakte/android/Attachment;[Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;Landroid/app/ProgressDialog;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/ChatActivity$32$1$2;->this$2:Lcom/vkontakte/android/ChatActivity$32$1;

    iput-object p2, p0, Lcom/vkontakte/android/ChatActivity$32$1$2;->val$att:Lcom/vkontakte/android/Attachment;

    iput-object p3, p0, Lcom/vkontakte/android/ChatActivity$32$1$2;->val$atts:[Ljava/lang/String;

    iput p4, p0, Lcom/vkontakte/android/ChatActivity$32$1$2;->val$_i:I

    iput-object p5, p0, Lcom/vkontakte/android/ChatActivity$32$1$2;->val$itemID:Ljava/lang/String;

    iput-object p6, p0, Lcom/vkontakte/android/ChatActivity$32$1$2;->val$thumbs:[Ljava/lang/String;

    iput-object p7, p0, Lcom/vkontakte/android/ChatActivity$32$1$2;->val$pdlg:Landroid/app/ProgressDialog;

    iput-object p8, p0, Lcom/vkontakte/android/ChatActivity$32$1$2;->val$msg:Ljava/lang/String;

    .line 1674
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 1676
    iget-object v6, p0, Lcom/vkontakte/android/ChatActivity$32$1$2;->val$att:Lcom/vkontakte/android/Attachment;

    check-cast v6, Lcom/vkontakte/android/PhotoAttachment;

    .line 1677
    .local v6, "pa":Lcom/vkontakte/android/PhotoAttachment;
    iget-object v0, p0, Lcom/vkontakte/android/ChatActivity$32$1$2;->val$atts:[Ljava/lang/String;

    iget v1, p0, Lcom/vkontakte/android/ChatActivity$32$1$2;->val$_i:I

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/vkontakte/android/ChatActivity$32$1$2;->val$itemID:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v6, Lcom/vkontakte/android/PhotoAttachment;->srcBig:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 1678
    sget v0, Lcom/vkontakte/android/Global;->displayDensity:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    .line 1679
    iget-object v1, p0, Lcom/vkontakte/android/ChatActivity$32$1$2;->val$thumbs:[Ljava/lang/String;

    iget v2, p0, Lcom/vkontakte/android/ChatActivity$32$1$2;->val$_i:I

    iget-object v0, v6, Lcom/vkontakte/android/PhotoAttachment;->images:Ljava/util/HashMap;

    const-string v3, "m"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/PhotoAttachment$Image;

    iget-object v0, v0, Lcom/vkontakte/android/PhotoAttachment$Image;->url:Ljava/lang/String;

    aput-object v0, v1, v2

    .line 1686
    :goto_0
    iget v0, p0, Lcom/vkontakte/android/ChatActivity$32$1$2;->val$_i:I

    iget-object v1, p0, Lcom/vkontakte/android/ChatActivity$32$1$2;->this$2:Lcom/vkontakte/android/ChatActivity$32$1;

    invoke-static {v1}, Lcom/vkontakte/android/ChatActivity$32$1;->access$0(Lcom/vkontakte/android/ChatActivity$32$1;)Lcom/vkontakte/android/ChatActivity$32;

    move-result-object v1

    invoke-static {v1}, Lcom/vkontakte/android/ChatActivity$32;->access$0(Lcom/vkontakte/android/ChatActivity$32;)Lcom/vkontakte/android/ChatActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/vkontakte/android/ChatActivity;->access$25(Lcom/vkontakte/android/ChatActivity;)Lcom/vkontakte/android/ui/MultiAttachView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vkontakte/android/ui/MultiAttachView;->getNumAttachments()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_4

    .line 1687
    iget-object v0, p0, Lcom/vkontakte/android/ChatActivity$32$1$2;->val$pdlg:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1688
    iget-object v0, p0, Lcom/vkontakte/android/ChatActivity$32$1$2;->this$2:Lcom/vkontakte/android/ChatActivity$32$1;

    invoke-static {v0}, Lcom/vkontakte/android/ChatActivity$32$1;->access$0(Lcom/vkontakte/android/ChatActivity$32$1;)Lcom/vkontakte/android/ChatActivity$32;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/ChatActivity$32;->access$0(Lcom/vkontakte/android/ChatActivity$32;)Lcom/vkontakte/android/ChatActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/ChatActivity$32$1$2;->val$msg:Ljava/lang/String;

    iget-object v2, p0, Lcom/vkontakte/android/ChatActivity$32$1$2;->val$atts:[Ljava/lang/String;

    iget-object v3, p0, Lcom/vkontakte/android/ChatActivity$32$1$2;->val$thumbs:[Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/vkontakte/android/ChatActivity;->access$52(Lcom/vkontakte/android/ChatActivity;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 1689
    iget-object v0, p0, Lcom/vkontakte/android/ChatActivity$32$1$2;->this$2:Lcom/vkontakte/android/ChatActivity$32$1;

    invoke-static {v0}, Lcom/vkontakte/android/ChatActivity$32$1;->access$0(Lcom/vkontakte/android/ChatActivity$32$1;)Lcom/vkontakte/android/ChatActivity$32;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/ChatActivity$32;->access$0(Lcom/vkontakte/android/ChatActivity$32;)Lcom/vkontakte/android/ChatActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/ChatActivity;->access$25(Lcom/vkontakte/android/ChatActivity;)Lcom/vkontakte/android/ui/MultiAttachView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/MultiAttachView;->reset()V

    .line 1693
    :goto_1
    return-void

    .line 1680
    :cond_0
    sget v0, Lcom/vkontakte/android/Global;->displayDensity:F

    float-to-double v0, v0

    const-wide/high16 v2, 0x3ff8000000000000L    # 1.5

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_2

    .line 1681
    iget-object v1, p0, Lcom/vkontakte/android/ChatActivity$32$1$2;->val$thumbs:[Ljava/lang/String;

    iget v2, p0, Lcom/vkontakte/android/ChatActivity$32$1$2;->val$_i:I

    iget-object v0, v6, Lcom/vkontakte/android/PhotoAttachment;->images:Ljava/util/HashMap;

    const-string v3, "q"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, v6, Lcom/vkontakte/android/PhotoAttachment;->images:Ljava/util/HashMap;

    const-string v3, "q"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/PhotoAttachment$Image;

    iget-object v0, v0, Lcom/vkontakte/android/PhotoAttachment$Image;->url:Ljava/lang/String;

    :goto_2
    aput-object v0, v1, v2

    goto :goto_0

    :cond_1
    iget-object v0, v6, Lcom/vkontakte/android/PhotoAttachment;->images:Ljava/util/HashMap;

    const-string v3, "m"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/PhotoAttachment$Image;

    iget-object v0, v0, Lcom/vkontakte/android/PhotoAttachment$Image;->url:Ljava/lang/String;

    goto :goto_2

    .line 1683
    :cond_2
    iget-object v1, p0, Lcom/vkontakte/android/ChatActivity$32$1$2;->val$thumbs:[Ljava/lang/String;

    iget v2, p0, Lcom/vkontakte/android/ChatActivity$32$1$2;->val$_i:I

    iget-object v0, v6, Lcom/vkontakte/android/PhotoAttachment;->images:Ljava/util/HashMap;

    const-string v3, "r"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, v6, Lcom/vkontakte/android/PhotoAttachment;->images:Ljava/util/HashMap;

    const-string v3, "r"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/PhotoAttachment$Image;

    iget-object v0, v0, Lcom/vkontakte/android/PhotoAttachment$Image;->url:Ljava/lang/String;

    :goto_3
    aput-object v0, v1, v2

    goto/16 :goto_0

    :cond_3
    iget-object v0, v6, Lcom/vkontakte/android/PhotoAttachment;->images:Ljava/util/HashMap;

    const-string v3, "m"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/PhotoAttachment$Image;

    iget-object v0, v0, Lcom/vkontakte/android/PhotoAttachment$Image;->url:Ljava/lang/String;

    goto :goto_3

    .line 1691
    :cond_4
    iget-object v0, p0, Lcom/vkontakte/android/ChatActivity$32$1$2;->this$2:Lcom/vkontakte/android/ChatActivity$32$1;

    invoke-static {v0}, Lcom/vkontakte/android/ChatActivity$32$1;->access$0(Lcom/vkontakte/android/ChatActivity$32$1;)Lcom/vkontakte/android/ChatActivity$32;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/ChatActivity$32;->access$0(Lcom/vkontakte/android/ChatActivity$32;)Lcom/vkontakte/android/ChatActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/ChatActivity$32$1$2;->val$atts:[Ljava/lang/String;

    iget-object v2, p0, Lcom/vkontakte/android/ChatActivity$32$1$2;->val$thumbs:[Ljava/lang/String;

    iget-object v3, p0, Lcom/vkontakte/android/ChatActivity$32$1$2;->val$msg:Ljava/lang/String;

    iget-object v4, p0, Lcom/vkontakte/android/ChatActivity$32$1$2;->val$pdlg:Landroid/app/ProgressDialog;

    iget v5, p0, Lcom/vkontakte/android/ChatActivity$32$1$2;->val$_i:I

    add-int/lit8 v5, v5, 0x1

    invoke-static/range {v0 .. v5}, Lcom/vkontakte/android/ChatActivity;->access$53(Lcom/vkontakte/android/ChatActivity;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/app/ProgressDialog;I)V

    goto :goto_1
.end method
