.class Lcom/vkontakte/android/fragments/ChatMembersFragment$13;
.super Ljava/lang/Object;
.source "ChatMembersFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/ChatMembersFragment;->showDndDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/ChatMembersFragment;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/ChatMembersFragment;)V
    .locals 0

    .prologue
    .line 560
    iput-object p1, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment$13;->this$0:Lcom/vkontakte/android/fragments/ChatMembersFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 563
    const/4 v1, 0x0

    .line 564
    .local v1, "t":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-int v0, v2

    .line 565
    .local v0, "now":I
    packed-switch p2, :pswitch_data_0

    .line 579
    :goto_0
    iget-object v2, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment$13;->this$0:Lcom/vkontakte/android/fragments/ChatMembersFragment;

    invoke-static {v2, v1}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->access$2300(Lcom/vkontakte/android/fragments/ChatMembersFragment;I)V

    .line 580
    iget-object v2, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment$13;->this$0:Lcom/vkontakte/android/fragments/ChatMembersFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->access$200(Lcom/vkontakte/android/fragments/ChatMembersFragment;)V

    .line 581
    return-void

    .line 567
    :pswitch_0
    add-int/lit16 v1, v0, 0xe10

    .line 568
    goto :goto_0

    .line 570
    :pswitch_1
    const v2, 0x15180

    add-int v1, v0, v2

    .line 571
    goto :goto_0

    .line 573
    :pswitch_2
    const v2, 0x93a80

    add-int v1, v0, v2

    .line 574
    goto :goto_0

    .line 576
    :pswitch_3
    const v1, 0x7fffffff

    goto :goto_0

    .line 565
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
