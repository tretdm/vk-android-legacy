.class Lcom/vkontakte/android/NewVideoPlayerActivity$16;
.super Ljava/lang/Object;
.source "NewVideoPlayerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/NewVideoPlayerActivity;->onError(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/NewVideoPlayerActivity;

.field private final synthetic val$errCode:I


# direct methods
.method constructor <init>(Lcom/vkontakte/android/NewVideoPlayerActivity;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$16;->this$0:Lcom/vkontakte/android/NewVideoPlayerActivity;

    iput p2, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$16;->val$errCode:I

    .line 795
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/NewVideoPlayerActivity$16;)Lcom/vkontakte/android/NewVideoPlayerActivity;
    .locals 1

    .prologue
    .line 795
    iget-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$16;->this$0:Lcom/vkontakte/android/NewVideoPlayerActivity;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 796
    const/4 v0, -0x1

    .line 797
    .local v0, "stringR":I
    iget v1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$16;->val$errCode:I

    packed-switch v1, :pswitch_data_0

    .line 808
    :goto_0
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 825
    :goto_1
    return-void

    .line 799
    :pswitch_0
    const v0, 0x7f0600f4

    .line 800
    goto :goto_0

    .line 802
    :pswitch_1
    const v0, 0x7f0600f2

    .line 803
    goto :goto_0

    .line 805
    :pswitch_2
    const v0, 0x7f0600f3

    goto :goto_0

    .line 809
    :cond_0
    new-instance v1, Lcom/vkontakte/android/VKAlertDialog$Builder;

    iget-object v2, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$16;->this$0:Lcom/vkontakte/android/NewVideoPlayerActivity;

    invoke-direct {v1, v2}, Lcom/vkontakte/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 810
    const v2, 0x7f06004e

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/VKAlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 811
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 812
    const v2, 0x7f060028

    new-instance v3, Lcom/vkontakte/android/NewVideoPlayerActivity$16$1;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/NewVideoPlayerActivity$16$1;-><init>(Lcom/vkontakte/android/NewVideoPlayerActivity$16;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 818
    new-instance v2, Lcom/vkontakte/android/NewVideoPlayerActivity$16$2;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/NewVideoPlayerActivity$16$2;-><init>(Lcom/vkontakte/android/NewVideoPlayerActivity$16;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 824
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_1

    .line 797
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
