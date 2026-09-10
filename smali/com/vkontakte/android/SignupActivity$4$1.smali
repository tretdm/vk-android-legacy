.class Lcom/vkontakte/android/SignupActivity$4$1;
.super Ljava/lang/Object;
.source "SignupActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/SignupActivity$4;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/SignupActivity$4;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/SignupActivity$4;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lcom/vkontakte/android/SignupActivity$4$1;->this$1:Lcom/vkontakte/android/SignupActivity$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 110
    iget-object v0, p0, Lcom/vkontakte/android/SignupActivity$4$1;->this$1:Lcom/vkontakte/android/SignupActivity$4;

    iget-object v0, v0, Lcom/vkontakte/android/SignupActivity$4;->this$0:Lcom/vkontakte/android/SignupActivity;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/vkontakte/android/SignupActivity;->access$500(Lcom/vkontakte/android/SignupActivity;I)V

    .line 111
    return-void
.end method
