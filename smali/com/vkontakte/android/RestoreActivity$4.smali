.class Lcom/vkontakte/android/RestoreActivity$4;
.super Ljava/lang/Object;
.source "RestoreActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/RestoreActivity;->setStep(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/RestoreActivity;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/RestoreActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/RestoreActivity$4;->this$0:Lcom/vkontakte/android/RestoreActivity;

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/vkontakte/android/RestoreActivity$4;->this$0:Lcom/vkontakte/android/RestoreActivity;

    invoke-static {v0}, Lcom/vkontakte/android/RestoreActivity;->access$5(Lcom/vkontakte/android/RestoreActivity;)Lcom/vkontakte/android/ui/ActionBarProgressDrawable;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/RestoreActivity$4;->this$0:Lcom/vkontakte/android/RestoreActivity;

    invoke-static {v1}, Lcom/vkontakte/android/RestoreActivity;->access$6(Lcom/vkontakte/android/RestoreActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/ActionBarProgressDrawable;->setStepAnimated(I)V

    .line 106
    return-void
.end method
