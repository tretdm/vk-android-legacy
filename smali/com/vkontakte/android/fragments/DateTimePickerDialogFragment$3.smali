.class Lcom/vkontakte/android/fragments/DateTimePickerDialogFragment$3;
.super Ljava/lang/Object;
.source "DateTimePickerDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/DateTimePickerDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/DateTimePickerDialogFragment;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/DateTimePickerDialogFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/fragments/DateTimePickerDialogFragment$3;->this$0:Lcom/vkontakte/android/fragments/DateTimePickerDialogFragment;

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/fragments/DateTimePickerDialogFragment$3;)Lcom/vkontakte/android/fragments/DateTimePickerDialogFragment;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DateTimePickerDialogFragment$3;->this$0:Lcom/vkontakte/android/fragments/DateTimePickerDialogFragment;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/16 v7, 0xc

    const/16 v4, 0xb

    const/4 v5, 0x1

    .line 83
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_0

    .line 84
    new-instance v0, Landroid/app/TimePickerDialog;

    iget-object v1, p0, Lcom/vkontakte/android/fragments/DateTimePickerDialogFragment$3;->this$0:Lcom/vkontakte/android/fragments/DateTimePickerDialogFragment;

    invoke-virtual {v1}, Lcom/vkontakte/android/fragments/DateTimePickerDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/vkontakte/android/fragments/DateTimePickerDialogFragment$3$1;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/fragments/DateTimePickerDialogFragment$3$1;-><init>(Lcom/vkontakte/android/fragments/DateTimePickerDialogFragment$3;)V

    .line 91
    iget-object v3, p0, Lcom/vkontakte/android/fragments/DateTimePickerDialogFragment$3;->this$0:Lcom/vkontakte/android/fragments/DateTimePickerDialogFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/DateTimePickerDialogFragment;->access$1(Lcom/vkontakte/android/fragments/DateTimePickerDialogFragment;)Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iget-object v4, p0, Lcom/vkontakte/android/fragments/DateTimePickerDialogFragment$3;->this$0:Lcom/vkontakte/android/fragments/DateTimePickerDialogFragment;

    invoke-static {v4}, Lcom/vkontakte/android/fragments/DateTimePickerDialogFragment;->access$1(Lcom/vkontakte/android/fragments/DateTimePickerDialogFragment;)Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 84
    invoke-direct/range {v0 .. v5}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    .line 91
    invoke-virtual {v0}, Landroid/app/TimePickerDialog;->show()V

    .line 105
    :goto_0
    return-void

    .line 93
    :cond_0
    new-instance v0, Lcom/vkontakte/android/fragments/DateTimePickerDialogFragment$3$2;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/fragments/DateTimePickerDialogFragment$3$2;-><init>(Lcom/vkontakte/android/fragments/DateTimePickerDialogFragment$3;)V

    .line 101
    iget-object v1, p0, Lcom/vkontakte/android/fragments/DateTimePickerDialogFragment$3;->this$0:Lcom/vkontakte/android/fragments/DateTimePickerDialogFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/DateTimePickerDialogFragment;->access$1(Lcom/vkontakte/android/fragments/DateTimePickerDialogFragment;)Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iget-object v2, p0, Lcom/vkontakte/android/fragments/DateTimePickerDialogFragment$3;->this$0:Lcom/vkontakte/android/fragments/DateTimePickerDialogFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/DateTimePickerDialogFragment;->access$1(Lcom/vkontakte/android/fragments/DateTimePickerDialogFragment;)Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 93
    invoke-static {v0, v1, v2, v5}, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->newInstance(Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog$OnTimeSetListener;IIZ)Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;

    move-result-object v6

    .line 102
    .local v6, "dlg":Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DateTimePickerDialogFragment$3;->this$0:Lcom/vkontakte/android/fragments/DateTimePickerDialogFragment;

    invoke-virtual {v0}, Lcom/vkontakte/android/fragments/DateTimePickerDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "timepicker"

    invoke-virtual {v6, v0, v1}, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DateTimePickerDialogFragment$3;->this$0:Lcom/vkontakte/android/fragments/DateTimePickerDialogFragment;

    const v1, 0x7f080252

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/fragments/DateTimePickerDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;->setDoneButtonText(Ljava/lang/String;)V

    goto :goto_0
.end method
