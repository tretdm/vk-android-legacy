.class Lcom/vkontakte/android/NewPostActivity$22;
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
    iput-object p1, p0, Lcom/vkontakte/android/NewPostActivity$22;->this$0:Lcom/vkontakte/android/NewPostActivity;

    .line 566
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 569
    packed-switch p2, :pswitch_data_0

    .line 586
    :goto_0
    return-void

    .line 571
    :pswitch_0
    iget-object v0, p0, Lcom/vkontakte/android/NewPostActivity$22;->this$0:Lcom/vkontakte/android/NewPostActivity;

    invoke-static {v0}, Lcom/vkontakte/android/NewPostActivity;->access$7(Lcom/vkontakte/android/NewPostActivity;)V

    goto :goto_0

    .line 574
    :pswitch_1
    iget-object v0, p0, Lcom/vkontakte/android/NewPostActivity$22;->this$0:Lcom/vkontakte/android/NewPostActivity;

    invoke-static {v0}, Lcom/vkontakte/android/NewPostActivity;->access$8(Lcom/vkontakte/android/NewPostActivity;)V

    goto :goto_0

    .line 577
    :pswitch_2
    iget-object v0, p0, Lcom/vkontakte/android/NewPostActivity$22;->this$0:Lcom/vkontakte/android/NewPostActivity;

    invoke-static {v0}, Lcom/vkontakte/android/NewPostActivity;->access$9(Lcom/vkontakte/android/NewPostActivity;)V

    goto :goto_0

    .line 580
    :pswitch_3
    iget-object v0, p0, Lcom/vkontakte/android/NewPostActivity$22;->this$0:Lcom/vkontakte/android/NewPostActivity;

    invoke-static {v0}, Lcom/vkontakte/android/NewPostActivity;->access$10(Lcom/vkontakte/android/NewPostActivity;)V

    goto :goto_0

    .line 583
    :pswitch_4
    iget-object v0, p0, Lcom/vkontakte/android/NewPostActivity$22;->this$0:Lcom/vkontakte/android/NewPostActivity;

    invoke-virtual {v0}, Lcom/vkontakte/android/NewPostActivity;->showOptions()V

    goto :goto_0

    .line 569
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
