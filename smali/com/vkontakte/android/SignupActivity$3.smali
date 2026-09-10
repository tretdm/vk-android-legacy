.class Lcom/vkontakte/android/SignupActivity$3;
.super Ljava/lang/Object;
.source "SignupActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/SignupActivity;->setStep(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/SignupActivity;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/SignupActivity;)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lcom/vkontakte/android/SignupActivity$3;->this$0:Lcom/vkontakte/android/SignupActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/vkontakte/android/SignupActivity$3;->this$0:Lcom/vkontakte/android/SignupActivity;

    invoke-static {v0}, Lcom/vkontakte/android/SignupActivity;->access$800(Lcom/vkontakte/android/SignupActivity;)Lcom/vkontakte/android/ui/ActionBarProgressDrawable;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/SignupActivity$3;->this$0:Lcom/vkontakte/android/SignupActivity;

    invoke-static {v1}, Lcom/vkontakte/android/SignupActivity;->access$700(Lcom/vkontakte/android/SignupActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/ActionBarProgressDrawable;->setStepAnimated(I)V

    .line 94
    return-void
.end method
