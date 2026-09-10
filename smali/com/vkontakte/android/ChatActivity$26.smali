.class Lcom/vkontakte/android/ChatActivity$26;
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
    iput-object p1, p0, Lcom/vkontakte/android/ChatActivity$26;->this$0:Lcom/vkontakte/android/ChatActivity;

    .line 1110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1113
    iget-object v0, p0, Lcom/vkontakte/android/ChatActivity$26;->this$0:Lcom/vkontakte/android/ChatActivity;

    invoke-static {v0}, Lcom/vkontakte/android/ChatActivity;->access$25(Lcom/vkontakte/android/ChatActivity;)Lcom/vkontakte/android/ui/MultiAttachView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/MultiAttachView;->hasLocation()Z

    move-result v0

    if-eqz v0, :cond_0

    if-lez p2, :cond_0

    add-int/lit8 p2, p2, 0x1

    .line 1114
    :cond_0
    packed-switch p2, :pswitch_data_0

    .line 1131
    :goto_0
    return-void

    .line 1116
    :pswitch_0
    iget-object v0, p0, Lcom/vkontakte/android/ChatActivity$26;->this$0:Lcom/vkontakte/android/ChatActivity;

    invoke-static {v0}, Lcom/vkontakte/android/ChatActivity;->access$39(Lcom/vkontakte/android/ChatActivity;)V

    goto :goto_0

    .line 1119
    :pswitch_1
    iget-object v0, p0, Lcom/vkontakte/android/ChatActivity$26;->this$0:Lcom/vkontakte/android/ChatActivity;

    invoke-static {v0}, Lcom/vkontakte/android/ChatActivity;->access$40(Lcom/vkontakte/android/ChatActivity;)V

    goto :goto_0

    .line 1122
    :pswitch_2
    iget-object v0, p0, Lcom/vkontakte/android/ChatActivity$26;->this$0:Lcom/vkontakte/android/ChatActivity;

    invoke-static {v0}, Lcom/vkontakte/android/ChatActivity;->access$41(Lcom/vkontakte/android/ChatActivity;)V

    goto :goto_0

    .line 1125
    :pswitch_3
    iget-object v0, p0, Lcom/vkontakte/android/ChatActivity$26;->this$0:Lcom/vkontakte/android/ChatActivity;

    invoke-static {v0}, Lcom/vkontakte/android/ChatActivity;->access$42(Lcom/vkontakte/android/ChatActivity;)V

    goto :goto_0

    .line 1128
    :pswitch_4
    iget-object v0, p0, Lcom/vkontakte/android/ChatActivity$26;->this$0:Lcom/vkontakte/android/ChatActivity;

    invoke-static {v0}, Lcom/vkontakte/android/ChatActivity;->access$43(Lcom/vkontakte/android/ChatActivity;)V

    goto :goto_0

    .line 1114
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
