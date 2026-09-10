.class Lcom/vkontakte/android/NewPostActivity$13;
.super Ljava/lang/Object;
.source "NewPostActivity.java"

# interfaces
.implements Lcom/vkontakte/android/fragments/DateTimePickerDialogFragment$OnSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/NewPostActivity;->showTimerDlg()V
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
    .line 532
    iput-object p1, p0, Lcom/vkontakte/android/NewPostActivity$13;->this$0:Lcom/vkontakte/android/NewPostActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDateSelected(Ljava/util/Calendar;)V
    .locals 1
    .param p1, "date"    # Ljava/util/Calendar;

    .prologue
    .line 535
    iget-object v0, p0, Lcom/vkontakte/android/NewPostActivity$13;->this$0:Lcom/vkontakte/android/NewPostActivity;

    invoke-static {v0, p1}, Lcom/vkontakte/android/NewPostActivity;->access$1502(Lcom/vkontakte/android/NewPostActivity;Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 536
    iget-object v0, p0, Lcom/vkontakte/android/NewPostActivity$13;->this$0:Lcom/vkontakte/android/NewPostActivity;

    invoke-static {v0}, Lcom/vkontakte/android/NewPostActivity;->access$1600(Lcom/vkontakte/android/NewPostActivity;)V

    .line 537
    return-void
.end method
