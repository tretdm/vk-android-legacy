.class Lcom/vkontakte/android/fragments/BoardTopicViewFragment$8;
.super Ljava/lang/Object;
.source "BoardTopicViewFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

.field private final synthetic val$comment:Lcom/vkontakte/android/api/BoardComment;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;Lcom/vkontakte/android/api/BoardComment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$8;->this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    iput-object p2, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$8;->val$comment:Lcom/vkontakte/android/api/BoardComment;

    .line 763
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 766
    iget-object v2, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$8;->val$comment:Lcom/vkontakte/android/api/BoardComment;

    iget-object v2, v2, Lcom/vkontakte/android/api/BoardComment;->linkUrls:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p2, v2, :cond_0

    .line 767
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    iget-object v2, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$8;->val$comment:Lcom/vkontakte/android/api/BoardComment;

    iget-object v2, v2, Lcom/vkontakte/android/api/BoardComment;->linkUrls:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v1, v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 768
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$8;->this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    invoke-virtual {v2, v1}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->startActivity(Landroid/content/Intent;)V

    .line 783
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 770
    :cond_0
    iget-object v2, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$8;->val$comment:Lcom/vkontakte/android/api/BoardComment;

    iget-object v2, v2, Lcom/vkontakte/android/api/BoardComment;->linkUrls:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr p2, v2

    .line 771
    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 774
    :pswitch_0
    iget-object v2, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$8;->this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    invoke-virtual {v2}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-string v3, "clipboard"

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/ClipboardManager;

    .line 775
    .local v0, "clipboard":Landroid/text/ClipboardManager;
    iget-object v2, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$8;->val$comment:Lcom/vkontakte/android/api/BoardComment;

    iget-object v2, v2, Lcom/vkontakte/android/api/BoardComment;->text:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 776
    iget-object v2, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$8;->this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    invoke-virtual {v2}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f0600f1

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 779
    .end local v0    # "clipboard":Landroid/text/ClipboardManager;
    :pswitch_1
    iget-object v2, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$8;->this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    iget-object v3, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$8;->val$comment:Lcom/vkontakte/android/api/BoardComment;

    invoke-static {v2, v3}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->access$41(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;Lcom/vkontakte/android/api/BoardComment;)V

    goto :goto_0

    .line 771
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
