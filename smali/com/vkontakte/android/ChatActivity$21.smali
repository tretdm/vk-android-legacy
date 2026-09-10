.class Lcom/vkontakte/android/ChatActivity$21;
.super Ljava/lang/Object;
.source "ChatActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/ChatActivity;->showAddAttachmentDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/ChatActivity;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/ChatActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/ChatActivity$21;->this$0:Lcom/vkontakte/android/ChatActivity;

    .line 818
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 821
    iget-object v0, p0, Lcom/vkontakte/android/ChatActivity$21;->this$0:Lcom/vkontakte/android/ChatActivity;

    invoke-static {v0}, Lcom/vkontakte/android/ChatActivity;->access$25(Lcom/vkontakte/android/ChatActivity;)Lcom/vkontakte/android/ui/MultiAttachView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/MultiAttachView;->hasLocation()Z

    move-result v0

    if-eqz v0, :cond_0

    if-lez p2, :cond_0

    add-int/lit8 p2, p2, 0x1

    .line 822
    :cond_0
    packed-switch p2, :pswitch_data_0

    .line 839
    :goto_0
    return-void

    .line 824
    :pswitch_0
    iget-object v0, p0, Lcom/vkontakte/android/ChatActivity$21;->this$0:Lcom/vkontakte/android/ChatActivity;

    invoke-static {v0}, Lcom/vkontakte/android/ChatActivity;->access$34(Lcom/vkontakte/android/ChatActivity;)V

    goto :goto_0

    .line 827
    :pswitch_1
    iget-object v0, p0, Lcom/vkontakte/android/ChatActivity$21;->this$0:Lcom/vkontakte/android/ChatActivity;

    invoke-static {v0}, Lcom/vkontakte/android/ChatActivity;->access$35(Lcom/vkontakte/android/ChatActivity;)V

    goto :goto_0

    .line 830
    :pswitch_2
    iget-object v0, p0, Lcom/vkontakte/android/ChatActivity$21;->this$0:Lcom/vkontakte/android/ChatActivity;

    invoke-static {v0}, Lcom/vkontakte/android/ChatActivity;->access$36(Lcom/vkontakte/android/ChatActivity;)V

    goto :goto_0

    .line 833
    :pswitch_3
    iget-object v0, p0, Lcom/vkontakte/android/ChatActivity$21;->this$0:Lcom/vkontakte/android/ChatActivity;

    invoke-static {v0}, Lcom/vkontakte/android/ChatActivity;->access$37(Lcom/vkontakte/android/ChatActivity;)V

    goto :goto_0

    .line 836
    :pswitch_4
    iget-object v0, p0, Lcom/vkontakte/android/ChatActivity$21;->this$0:Lcom/vkontakte/android/ChatActivity;

    invoke-static {v0}, Lcom/vkontakte/android/ChatActivity;->access$38(Lcom/vkontakte/android/ChatActivity;)V

    goto :goto_0

    .line 822
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
