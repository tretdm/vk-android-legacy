.class Lcom/vkontakte/android/NewVideoPlayerActivity$18;
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
    iput-object p1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$18;->this$0:Lcom/vkontakte/android/NewVideoPlayerActivity;

    iput p2, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$18;->val$errCode:I

    .line 919
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/NewVideoPlayerActivity$18;)Lcom/vkontakte/android/NewVideoPlayerActivity;
    .locals 1

    .prologue
    .line 919
    iget-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$18;->this$0:Lcom/vkontakte/android/NewVideoPlayerActivity;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 920
    const/4 v0, -0x1

    .line 921
    .local v0, "stringR":I
    iget v1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$18;->val$errCode:I

    packed-switch v1, :pswitch_data_0

    .line 932
    :goto_0
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 949
    :goto_1
    return-void

    .line 923
    :pswitch_0
    const v0, 0x7f08010e

    .line 924
    goto :goto_0

    .line 926
    :pswitch_1
    const v0, 0x7f08010c

    .line 927
    goto :goto_0

    .line 929
    :pswitch_2
    const v0, 0x7f08010d

    goto :goto_0

    .line 933
    :cond_0
    new-instance v1, Lcom/vkontakte/android/VKAlertDialog$Builder;

    iget-object v2, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$18;->this$0:Lcom/vkontakte/android/NewVideoPlayerActivity;

    invoke-direct {v1, v2}, Lcom/vkontakte/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 934
    const v2, 0x7f080068

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/VKAlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 935
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 936
    const v2, 0x7f080042

    new-instance v3, Lcom/vkontakte/android/NewVideoPlayerActivity$18$1;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/NewVideoPlayerActivity$18$1;-><init>(Lcom/vkontakte/android/NewVideoPlayerActivity$18;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 942
    new-instance v2, Lcom/vkontakte/android/NewVideoPlayerActivity$18$2;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/NewVideoPlayerActivity$18$2;-><init>(Lcom/vkontakte/android/NewVideoPlayerActivity$18;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 948
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_1

    .line 921
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
