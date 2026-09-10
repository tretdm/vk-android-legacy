.class Lcom/vkontakte/android/CallActivity$11$3$1;
.super Ljava/lang/Object;
.source "CallActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/CallActivity$11$3;->onReceived()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/vkontakte/android/CallActivity$11$3;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/CallActivity$11$3;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/CallActivity$11$3$1;->this$2:Lcom/vkontakte/android/CallActivity$11$3;

    .line 590
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 591
    iget-object v0, p0, Lcom/vkontakte/android/CallActivity$11$3$1;->this$2:Lcom/vkontakte/android/CallActivity$11$3;

    invoke-static {v0}, Lcom/vkontakte/android/CallActivity$11$3;->access$0(Lcom/vkontakte/android/CallActivity$11$3;)Lcom/vkontakte/android/CallActivity$11;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/CallActivity$11;->access$0(Lcom/vkontakte/android/CallActivity$11;)Lcom/vkontakte/android/CallActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/CallActivity;->access$36(Lcom/vkontakte/android/CallActivity;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f06004a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0901e6

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 592
    return-void
.end method
