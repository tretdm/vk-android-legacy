.class Lcom/vkontakte/android/fragments/DateTimePickerDialogFragment$4$2;
.super Ljava/lang/Object;
.source "DateTimePickerDialogFragment.java"

# interfaces
.implements Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog$OnDateSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/DateTimePickerDialogFragment$4;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/fragments/DateTimePickerDialogFragment$4;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/DateTimePickerDialogFragment$4;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/fragments/DateTimePickerDialogFragment$4$2;->this$1:Lcom/vkontakte/android/fragments/DateTimePickerDialogFragment$4;

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDateSet(Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog;III)V
    .locals 7
    .param p1, "view"    # Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog;
    .param p2, "year"    # I
    .param p3, "monthOfYear"    # I
    .param p4, "dayOfMonth"    # I

    .prologue
    .line 130
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 131
    .local v0, "c":Ljava/util/Calendar;
    invoke-virtual {v0, p2, p3, p4}, Ljava/util/Calendar;->set(III)V

    .line 132
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    sub-long/2addr v3, v5

    cmp-long v1, v1, v3

    if-ltz v1, :cond_0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide v5, 0x757b12c00L

    add-long/2addr v3, v5

    cmp-long v1, v1, v3

    if-lez v1, :cond_1

    .line 133
    :cond_0
    iget-object v1, p0, Lcom/vkontakte/android/fragments/DateTimePickerDialogFragment$4$2;->this$1:Lcom/vkontakte/android/fragments/DateTimePickerDialogFragment$4;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/DateTimePickerDialogFragment$4;->access$0(Lcom/vkontakte/android/fragments/DateTimePickerDialogFragment$4;)Lcom/vkontakte/android/fragments/DateTimePickerDialogFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vkontakte/android/fragments/DateTimePickerDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f080301

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 138
    :goto_0
    return-void

    .line 136
    :cond_1
    iget-object v1, p0, Lcom/vkontakte/android/fragments/DateTimePickerDialogFragment$4$2;->this$1:Lcom/vkontakte/android/fragments/DateTimePickerDialogFragment$4;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/DateTimePickerDialogFragment$4;->access$0(Lcom/vkontakte/android/fragments/DateTimePickerDialogFragment$4;)Lcom/vkontakte/android/fragments/DateTimePickerDialogFragment;

    move-result-object v1

    invoke-static {v1}, Lcom/vkontakte/android/fragments/DateTimePickerDialogFragment;->access$1(Lcom/vkontakte/android/fragments/DateTimePickerDialogFragment;)Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1, p2, p3, p4}, Ljava/util/Calendar;->set(III)V

    .line 137
    iget-object v1, p0, Lcom/vkontakte/android/fragments/DateTimePickerDialogFragment$4$2;->this$1:Lcom/vkontakte/android/fragments/DateTimePickerDialogFragment$4;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/DateTimePickerDialogFragment$4;->access$0(Lcom/vkontakte/android/fragments/DateTimePickerDialogFragment$4;)Lcom/vkontakte/android/fragments/DateTimePickerDialogFragment;

    move-result-object v1

    invoke-static {v1}, Lcom/vkontakte/android/fragments/DateTimePickerDialogFragment;->access$2(Lcom/vkontakte/android/fragments/DateTimePickerDialogFragment;)V

    goto :goto_0
.end method
