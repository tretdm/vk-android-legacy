.class Lcom/vkontakte/android/NewPostActivity$12;
.super Ljava/lang/Object;
.source "NewPostActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/NewPostActivity;->showExtendedAttachMenu()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/NewPostActivity;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/NewPostActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/NewPostActivity$12;->this$0:Lcom/vkontakte/android/NewPostActivity;

    .line 498
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 501
    packed-switch p2, :pswitch_data_0

    .line 519
    :cond_0
    :goto_0
    return-void

    .line 503
    :pswitch_0
    iget-object v0, p0, Lcom/vkontakte/android/NewPostActivity$12;->this$0:Lcom/vkontakte/android/NewPostActivity;

    invoke-static {v0}, Lcom/vkontakte/android/NewPostActivity;->access$1(Lcom/vkontakte/android/NewPostActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 504
    iget-object v0, p0, Lcom/vkontakte/android/NewPostActivity$12;->this$0:Lcom/vkontakte/android/NewPostActivity;

    invoke-static {v0}, Lcom/vkontakte/android/NewPostActivity;->access$11(Lcom/vkontakte/android/NewPostActivity;)V

    goto :goto_0

    .line 507
    :pswitch_1
    iget-object v0, p0, Lcom/vkontakte/android/NewPostActivity$12;->this$0:Lcom/vkontakte/android/NewPostActivity;

    invoke-static {v0}, Lcom/vkontakte/android/NewPostActivity;->access$1(Lcom/vkontakte/android/NewPostActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 508
    iget-object v0, p0, Lcom/vkontakte/android/NewPostActivity$12;->this$0:Lcom/vkontakte/android/NewPostActivity;

    invoke-static {v0}, Lcom/vkontakte/android/NewPostActivity;->access$12(Lcom/vkontakte/android/NewPostActivity;)V

    goto :goto_0

    .line 511
    :pswitch_2
    iget-object v0, p0, Lcom/vkontakte/android/NewPostActivity$12;->this$0:Lcom/vkontakte/android/NewPostActivity;

    invoke-static {v0}, Lcom/vkontakte/android/NewPostActivity;->access$1(Lcom/vkontakte/android/NewPostActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 512
    iget-object v0, p0, Lcom/vkontakte/android/NewPostActivity$12;->this$0:Lcom/vkontakte/android/NewPostActivity;

    invoke-static {v0}, Lcom/vkontakte/android/NewPostActivity;->access$13(Lcom/vkontakte/android/NewPostActivity;)V

    goto :goto_0

    .line 515
    :pswitch_3
    iget-object v0, p0, Lcom/vkontakte/android/NewPostActivity$12;->this$0:Lcom/vkontakte/android/NewPostActivity;

    invoke-static {v0}, Lcom/vkontakte/android/NewPostActivity;->access$1(Lcom/vkontakte/android/NewPostActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 516
    iget-object v0, p0, Lcom/vkontakte/android/NewPostActivity$12;->this$0:Lcom/vkontakte/android/NewPostActivity;

    invoke-static {v0}, Lcom/vkontakte/android/NewPostActivity;->access$14(Lcom/vkontakte/android/NewPostActivity;)V

    goto :goto_0

    .line 501
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
