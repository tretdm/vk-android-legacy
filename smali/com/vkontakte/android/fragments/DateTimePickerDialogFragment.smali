.class public Lcom/vkontakte/android/fragments/DateTimePickerDialogFragment;
.super Lcom/actionbarsherlock/app/SherlockDialogFragment;
.source "DateTimePickerDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/fragments/DateTimePickerDialogFragment$OnSelectedListener;
    }
.end annotation


# instance fields
.field private date:Ljava/util/Calendar;

.field private listener:Lcom/vkontakte/android/fragments/DateTimePickerDialogFragment$OnSelectedListener;

.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockDialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/fragments/DateTimePickerDialogFragment;)Lcom/vkontakte/android/fragments/DateTimePickerDialogFragment$OnSelectedListener;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DateTimePickerDialogFragment;->listener:Lcom/vkontakte/android/fragments/DateTimePickerDialogFragment$OnSelectedListener;

    return-object v0
.end method

.method static synthetic access$1(Lcom/vkontakte/android/fragments/DateTimePickerDialogFragment;)Ljava/util/Calendar;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DateTimePickerDialogFragment;->date:Ljava/util/Calendar;

    return-object v0
.end method

.method static synthetic access$2(Lcom/vkontakte/android/fragments/DateTimePickerDialogFragment;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/DateTimePickerDialogFragment;->updateTimer()V

    return-void
.end method

.method private updateTimer()V
    .locals 7

    .prologue
    .line 47
    iget-object v1, p0, Lcom/vkontakte/android/fragments/DateTimePickerDialogFragment;->view:Landroid/view/View;

    if-nez v1, :cond_0

    .line 51
    :goto_0
    return-void

    .line 48
    :cond_0
    iget-object v1, p0, Lcom/vkontakte/android/fragments/DateTimePickerDialogFragment;->date:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    long-to-int v0, v1

    .line 49
    .local v0, "date":I
    iget-object v1, p0, Lcom/vkontakte/android/fragments/DateTimePickerDialogFragment;->view:Landroid/view/View;

    const v2, 0x7f0900b3

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {v0}, Lcom/vkontakte/android/Global;->langDateDay(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    iget-object v1, p0, Lcom/vkontakte/android/fragments/DateTimePickerDialogFragment;->view:Landroid/view/View;

    const v2, 0x7f0900b4

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const-string v2, "%d:%02d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/vkontakte/android/fragments/DateTimePickerDialogFragment;->date:Ljava/util/Calendar;

    const/16 v6, 0xb

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/vkontakte/android/fragments/DateTimePickerDialogFragment;->date:Ljava/util/Calendar;

    const/16 v6, 0xc

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    const/16 v4, 0xc

    const/4 v3, 0x0

    .line 33
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockDialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 34
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/fragments/DateTimePickerDialogFragment;->date:Ljava/util/Calendar;

    .line 35
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/DateTimePickerDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    .line 36
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DateTimePickerDialogFragment;->date:Ljava/util/Calendar;

    const/16 v1, 0xb

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 37
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DateTimePickerDialogFragment;->date:Ljava/util/Calendar;

    const/16 v1, 0xd

    invoke-virtual {v0, v1, v3}, Ljava/util/Calendar;->set(II)V

    .line 38
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DateTimePickerDialogFragment;->date:Ljava/util/Calendar;

    const/16 v1, 0xe

    invoke-virtual {v0, v1, v3}, Ljava/util/Calendar;->set(II)V

    .line 39
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DateTimePickerDialogFragment;->date:Ljava/util/Calendar;

    iget-object v1, p0, Lcom/vkontakte/android/fragments/DateTimePickerDialogFragment;->date:Ljava/util/Calendar;

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40a00000    # 5.0f

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    mul-int/lit8 v1, v1, 0x5

    invoke-virtual {v0, v4, v1}, Ljava/util/Calendar;->set(II)V

    .line 43
    :goto_0
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/DateTimePickerDialogFragment;->updateTimer()V

    .line 44
    return-void

    .line 41
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DateTimePickerDialogFragment;->date:Ljava/util/Calendar;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/DateTimePickerDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "date"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    goto :goto_0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 59
    new-instance v1, Lcom/vkontakte/android/VKAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/DateTimePickerDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/vkontakte/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 60
    const v2, 0x7f080303

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/VKAlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 61
    const v2, 0x7f080042

    new-instance v3, Lcom/vkontakte/android/fragments/DateTimePickerDialogFragment$1;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/fragments/DateTimePickerDialogFragment$1;-><init>(Lcom/vkontakte/android/fragments/DateTimePickerDialogFragment;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 69
    const v2, 0x7f080041

    invoke-virtual {v1, v2, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 70
    .local v0, "adb":Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/DateTimePickerDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 71
    const v1, 0x7f080256

    new-instance v2, Lcom/vkontakte/android/fragments/DateTimePickerDialogFragment$2;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/fragments/DateTimePickerDialogFragment$2;-><init>(Lcom/vkontakte/android/fragments/DateTimePickerDialogFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 79
    :cond_0
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/DateTimePickerDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f03003b

    invoke-static {v1, v2, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/vkontakte/android/fragments/DateTimePickerDialogFragment;->view:Landroid/view/View;

    .line 80
    iget-object v1, p0, Lcom/vkontakte/android/fragments/DateTimePickerDialogFragment;->view:Landroid/view/View;

    const v2, 0x7f0900b4

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/vkontakte/android/fragments/DateTimePickerDialogFragment$3;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/fragments/DateTimePickerDialogFragment$3;-><init>(Lcom/vkontakte/android/fragments/DateTimePickerDialogFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    iget-object v1, p0, Lcom/vkontakte/android/fragments/DateTimePickerDialogFragment;->view:Landroid/view/View;

    const v2, 0x7f0900b3

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/vkontakte/android/fragments/DateTimePickerDialogFragment$4;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/fragments/DateTimePickerDialogFragment$4;-><init>(Lcom/vkontakte/android/fragments/DateTimePickerDialogFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/DateTimePickerDialogFragment;->updateTimer()V

    .line 148
    iget-object v1, p0, Lcom/vkontakte/android/fragments/DateTimePickerDialogFragment;->view:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 149
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method

.method public setOnSelectedListener(Lcom/vkontakte/android/fragments/DateTimePickerDialogFragment$OnSelectedListener;)V
    .locals 0
    .param p1, "l"    # Lcom/vkontakte/android/fragments/DateTimePickerDialogFragment$OnSelectedListener;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/vkontakte/android/fragments/DateTimePickerDialogFragment;->listener:Lcom/vkontakte/android/fragments/DateTimePickerDialogFragment$OnSelectedListener;

    .line 55
    return-void
.end method
