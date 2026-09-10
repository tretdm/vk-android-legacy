.class Lcom/vkontakte/android/DialogsActivity$8$1;
.super Ljava/lang/Object;
.source "DialogsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/DialogsActivity$8;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/DialogsActivity$8;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/DialogsActivity$8;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/DialogsActivity$8$1;->this$1:Lcom/vkontakte/android/DialogsActivity$8;

    .line 392
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 393
    iget-object v0, p0, Lcom/vkontakte/android/DialogsActivity$8$1;->this$1:Lcom/vkontakte/android/DialogsActivity$8;

    invoke-static {v0}, Lcom/vkontakte/android/DialogsActivity$8;->access$0(Lcom/vkontakte/android/DialogsActivity$8;)Lcom/vkontakte/android/DialogsActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/vkontakte/android/DialogsActivity;->noMsgText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->clearAnimation()V

    .line 394
    return-void
.end method
