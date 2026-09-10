.class Lcom/vkontakte/android/fragments/DateTimePickerDialogFragment$3$2;
.super Ljava/lang/Object;
.source "DateTimePickerDialogFragment.java"

# interfaces
.implements Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog$OnTimeSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/DateTimePickerDialogFragment$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/fragments/DateTimePickerDialogFragment$3;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/DateTimePickerDialogFragment$3;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/fragments/DateTimePickerDialogFragment$3$2;->this$1:Lcom/vkontakte/android/fragments/DateTimePickerDialogFragment$3;

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimeSet(Lcom/fourmob/datetimepicker/time/RadialPickerLayout;II)V
    .locals 4
    .param p1, "view"    # Lcom/fourmob/datetimepicker/time/RadialPickerLayout;
    .param p2, "hourOfDay"    # I
    .param p3, "minute"    # I

    .prologue
    .line 97
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DateTimePickerDialogFragment$3$2;->this$1:Lcom/vkontakte/android/fragments/DateTimePickerDialogFragment$3;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/DateTimePickerDialogFragment$3;->access$0(Lcom/vkontakte/android/fragments/DateTimePickerDialogFragment$3;)Lcom/vkontakte/android/fragments/DateTimePickerDialogFragment;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/fragments/DateTimePickerDialogFragment;->access$1(Lcom/vkontakte/android/fragments/DateTimePickerDialogFragment;)Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0xb

    invoke-virtual {v0, v1, p2}, Ljava/util/Calendar;->set(II)V

    .line 98
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DateTimePickerDialogFragment$3$2;->this$1:Lcom/vkontakte/android/fragments/DateTimePickerDialogFragment$3;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/DateTimePickerDialogFragment$3;->access$0(Lcom/vkontakte/android/fragments/DateTimePickerDialogFragment$3;)Lcom/vkontakte/android/fragments/DateTimePickerDialogFragment;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/fragments/DateTimePickerDialogFragment;->access$1(Lcom/vkontakte/android/fragments/DateTimePickerDialogFragment;)Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0xc

    int-to-float v2, p3

    const/high16 v3, 0x40a00000    # 5.0f

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    mul-int/lit8 v2, v2, 0x5

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 99
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DateTimePickerDialogFragment$3$2;->this$1:Lcom/vkontakte/android/fragments/DateTimePickerDialogFragment$3;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/DateTimePickerDialogFragment$3;->access$0(Lcom/vkontakte/android/fragments/DateTimePickerDialogFragment$3;)Lcom/vkontakte/android/fragments/DateTimePickerDialogFragment;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/fragments/DateTimePickerDialogFragment;->access$2(Lcom/vkontakte/android/fragments/DateTimePickerDialogFragment;)V

    .line 100
    return-void
.end method
