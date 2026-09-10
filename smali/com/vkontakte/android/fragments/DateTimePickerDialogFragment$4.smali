.class Lcom/vkontakte/android/fragments/DateTimePickerDialogFragment$4;
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
    iput-object p1, p0, Lcom/vkontakte/android/fragments/DateTimePickerDialogFragment$4;->this$0:Lcom/vkontakte/android/fragments/DateTimePickerDialogFragment;

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/fragments/DateTimePickerDialogFragment$4;)Lcom/vkontakte/android/fragments/DateTimePickerDialogFragment;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DateTimePickerDialogFragment$4;->this$0:Lcom/vkontakte/android/fragments/DateTimePickerDialogFragment;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v9, 0x5

    const/4 v8, 0x2

    const/4 v5, 0x1

    .line 110
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-ge v1, v2, :cond_0

    .line 111
    new-instance v0, Landroid/app/DatePickerDialog;

    iget-object v1, p0, Lcom/vkontakte/android/fragments/DateTimePickerDialogFragment$4;->this$0:Lcom/vkontakte/android/fragments/DateTimePickerDialogFragment;

    invoke-virtual {v1}, Lcom/vkontakte/android/fragments/DateTimePickerDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/vkontakte/android/fragments/DateTimePickerDialogFragment$4$1;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/fragments/DateTimePickerDialogFragment$4$1;-><init>(Lcom/vkontakte/android/fragments/DateTimePickerDialogFragment$4;)V

    .line 123
    iget-object v3, p0, Lcom/vkontakte/android/fragments/DateTimePickerDialogFragment$4;->this$0:Lcom/vkontakte/android/fragments/DateTimePickerDialogFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/DateTimePickerDialogFragment;->access$1(Lcom/vkontakte/android/fragments/DateTimePickerDialogFragment;)Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iget-object v4, p0, Lcom/vkontakte/android/fragments/DateTimePickerDialogFragment$4;->this$0:Lcom/vkontakte/android/fragments/DateTimePickerDialogFragment;

    invoke-static {v4}, Lcom/vkontakte/android/fragments/DateTimePickerDialogFragment;->access$1(Lcom/vkontakte/android/fragments/DateTimePickerDialogFragment;)Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/util/Calendar;->get(I)I

    move-result v4

    iget-object v5, p0, Lcom/vkontakte/android/fragments/DateTimePickerDialogFragment$4;->this$0:Lcom/vkontakte/android/fragments/DateTimePickerDialogFragment;

    invoke-static {v5}, Lcom/vkontakte/android/fragments/DateTimePickerDialogFragment;->access$1(Lcom/vkontakte/android/fragments/DateTimePickerDialogFragment;)Ljava/util/Calendar;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 111
    invoke-direct/range {v0 .. v5}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    .line 124
    .local v0, "dpd":Landroid/app/DatePickerDialog;
    invoke-virtual {v0}, Landroid/app/DatePickerDialog;->show()V

    .line 145
    .end local v0    # "dpd":Landroid/app/DatePickerDialog;
    :goto_0
    return-void

    .line 126
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    .line 127
    .local v7, "now":Ljava/util/Calendar;
    new-instance v1, Lcom/vkontakte/android/fragments/DateTimePickerDialogFragment$4$2;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/fragments/DateTimePickerDialogFragment$4$2;-><init>(Lcom/vkontakte/android/fragments/DateTimePickerDialogFragment$4;)V

    .line 139
    iget-object v2, p0, Lcom/vkontakte/android/fragments/DateTimePickerDialogFragment$4;->this$0:Lcom/vkontakte/android/fragments/DateTimePickerDialogFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/DateTimePickerDialogFragment;->access$1(Lcom/vkontakte/android/fragments/DateTimePickerDialogFragment;)Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iget-object v3, p0, Lcom/vkontakte/android/fragments/DateTimePickerDialogFragment$4;->this$0:Lcom/vkontakte/android/fragments/DateTimePickerDialogFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/DateTimePickerDialogFragment;->access$1(Lcom/vkontakte/android/fragments/DateTimePickerDialogFragment;)Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iget-object v4, p0, Lcom/vkontakte/android/fragments/DateTimePickerDialogFragment$4;->this$0:Lcom/vkontakte/android/fragments/DateTimePickerDialogFragment;

    invoke-static {v4}, Lcom/vkontakte/android/fragments/DateTimePickerDialogFragment;->access$1(Lcom/vkontakte/android/fragments/DateTimePickerDialogFragment;)Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 127
    invoke-static {v1, v2, v3, v4}, Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog;->newInstance(Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog$OnDateSetListener;III)Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog;

    move-result-object v6

    .line 140
    .local v6, "dlg":Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog;
    invoke-virtual {v7, v9}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v7, v8}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v7, v5}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v6, v1, v2, v3}, Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog;->setMinDay(III)V

    .line 141
    invoke-virtual {v7, v9}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v7, v8}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v7, v5}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v6, v1, v2, v3}, Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog;->setMaxDay(III)V

    .line 142
    iget-object v1, p0, Lcom/vkontakte/android/fragments/DateTimePickerDialogFragment$4;->this$0:Lcom/vkontakte/android/fragments/DateTimePickerDialogFragment;

    invoke-virtual {v1}, Lcom/vkontakte/android/fragments/DateTimePickerDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "datepicker"

    invoke-virtual {v6, v1, v2}, Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 143
    iget-object v1, p0, Lcom/vkontakte/android/fragments/DateTimePickerDialogFragment$4;->this$0:Lcom/vkontakte/android/fragments/DateTimePickerDialogFragment;

    const v2, 0x7f080252

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/fragments/DateTimePickerDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog;->setDoneButtonText(Ljava/lang/String;)V

    goto :goto_0
.end method
