# 1 "/home/jins/bl_iot_sdk/components/hal_drv/bl602_hal/hal_i2c.c"
# 1 "/home/jins/bl_iot_sdk/customer_app/tt_app_temperature/build_out/hal_drv//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/home/jins/bl_iot_sdk/components/hal_drv/bl602_hal/hal_i2c.c"
# 30 "/home/jins/bl_iot_sdk/components/hal_drv/bl602_hal/hal_i2c.c"
# 1 "/home/jins/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/FreeRTOS.h" 1
# 34 "/home/jins/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/FreeRTOS.h"
# 1 "/home/jins/bl_iot_sdk/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/8.3.0/include/stddef.h" 1 3 4
# 149 "/home/jins/bl_iot_sdk/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/8.3.0/include/stddef.h" 3 4

# 149 "/home/jins/bl_iot_sdk/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/8.3.0/include/stddef.h" 3 4
typedef int ptrdiff_t;
# 216 "/home/jins/bl_iot_sdk/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/8.3.0/include/stddef.h" 3 4
typedef unsigned int size_t;
# 328 "/home/jins/bl_iot_sdk/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/8.3.0/include/stddef.h" 3 4
typedef int wchar_t;
# 35 "/home/jins/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/FreeRTOS.h" 2
# 49 "/home/jins/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/FreeRTOS.h"
# 1 "/home/jins/bl_iot_sdk/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/8.3.0/include/stdint.h" 1 3 4
# 11 "/home/jins/bl_iot_sdk/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/8.3.0/include/stdint.h" 3 4
# 1 "/home/jins/bl_iot_sdk/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/8.3.0/include/stdint-gcc.h" 1 3 4
# 34 "/home/jins/bl_iot_sdk/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/8.3.0/include/stdint-gcc.h" 3 4
typedef signed char int8_t;


typedef short int int16_t;


typedef long int int32_t;


typedef long long int int64_t;


typedef unsigned char uint8_t;


typedef short unsigned int uint16_t;


typedef long unsigned int uint32_t;


typedef long long unsigned int uint64_t;




typedef signed char int_least8_t;
typedef short int int_least16_t;
typedef long int int_least32_t;
typedef long long int int_least64_t;
typedef unsigned char uint_least8_t;
typedef short unsigned int uint_least16_t;
typedef long unsigned int uint_least32_t;
typedef long long unsigned int uint_least64_t;



typedef int int_fast8_t;
typedef int int_fast16_t;
typedef int int_fast32_t;
typedef long long int int_fast64_t;
typedef unsigned int uint_fast8_t;
typedef unsigned int uint_fast16_t;
typedef unsigned int uint_fast32_t;
typedef long long unsigned int uint_fast64_t;




typedef int intptr_t;


typedef unsigned int uintptr_t;




typedef long long int intmax_t;
typedef long long unsigned int uintmax_t;
# 12 "/home/jins/bl_iot_sdk/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/8.3.0/include/stdint.h" 2 3 4
# 50 "/home/jins/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/FreeRTOS.h" 2






# 1 "/home/jins/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/FreeRTOSConfig.h" 1
# 74 "/home/jins/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/FreeRTOSConfig.h"
# 1 "/home/jins/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/platform.h" 1
# 127 "/home/jins/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/platform.h"

# 127 "/home/jins/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/platform.h"
unsigned long get_cpu_freq(void);
unsigned long get_timer_freq(void);
uint64_t get_timer_value(void);
# 75 "/home/jins/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/FreeRTOSConfig.h" 2
# 149 "/home/jins/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/FreeRTOSConfig.h"
void vAssertCalled( void );
# 57 "/home/jins/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/FreeRTOS.h" 2


# 1 "/home/jins/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/projdefs.h" 1
# 35 "/home/jins/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/projdefs.h"
typedef void (*TaskFunction_t)( void * );
# 60 "/home/jins/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/FreeRTOS.h" 2


# 1 "/home/jins/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/portable.h" 1
# 45 "/home/jins/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/portable.h"
# 1 "/home/jins/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/deprecated_definitions.h" 1
# 46 "/home/jins/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/portable.h" 2






# 1 "/home/jins/bl_iot_sdk/components/bl602/freertos_riscv_ram/portable/GCC/RISC-V/portmacro.h" 1
# 62 "/home/jins/bl_iot_sdk/components/bl602/freertos_riscv_ram/portable/GCC/RISC-V/portmacro.h"
typedef uint32_t StackType_t;
typedef int32_t BaseType_t;
typedef uint32_t UBaseType_t;
typedef uint32_t TickType_t;
# 84 "/home/jins/bl_iot_sdk/components/bl602/freertos_riscv_ram/portable/GCC/RISC-V/portmacro.h"
extern BaseType_t TrapNetCounter;
extern void vTaskSwitchContext( void );
# 94 "/home/jins/bl_iot_sdk/components/bl602/freertos_riscv_ram/portable/GCC/RISC-V/portmacro.h"
extern void vTaskEnterCritical( void );
extern void vTaskExitCritical( void );
# 149 "/home/jins/bl_iot_sdk/components/bl602/freertos_riscv_ram/portable/GCC/RISC-V/portmacro.h"
inline __attribute__(( always_inline)) static BaseType_t xPortIsInsideInterrupt( void )
{
    return TrapNetCounter ? 1 : 0;
}
# 53 "/home/jins/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/portable.h" 2
# 99 "/home/jins/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/portable.h"
# 1 "/home/jins/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/mpu_wrappers.h" 1
# 100 "/home/jins/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/portable.h" 2
# 117 "/home/jins/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/portable.h"
        StackType_t *pxPortInitialiseStack( StackType_t *pxTopOfStack, TaskFunction_t pxCode, void *pvParameters ) ;




typedef struct HeapRegion
{
    uint8_t *pucStartAddress;
    size_t xSizeInBytes;
} HeapRegion_t;
# 139 "/home/jins/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/portable.h"
void vPortDefineHeapRegions( const HeapRegion_t * const pxHeapRegions ) ;





void *pvPortMalloc( size_t xSize ) ;
void vPortFree( void *pv ) ;
void vPortInitialiseBlocks( void ) ;
size_t xPortGetFreeHeapSize( void ) ;
size_t xPortGetMinimumEverFreeHeapSize( void ) ;





BaseType_t xPortStartScheduler( void ) ;






void vPortEndScheduler( void ) ;
# 63 "/home/jins/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/FreeRTOS.h" 2
# 1044 "/home/jins/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/FreeRTOS.h"
struct xSTATIC_LIST_ITEM
{



    TickType_t xDummy2;
    void *pvDummy3[ 4 ];



};
typedef struct xSTATIC_LIST_ITEM StaticListItem_t;


struct xSTATIC_MINI_LIST_ITEM
{



    TickType_t xDummy2;
    void *pvDummy3[ 2 ];
};
typedef struct xSTATIC_MINI_LIST_ITEM StaticMiniListItem_t;


typedef struct xSTATIC_LIST
{



    UBaseType_t uxDummy2;
    void *pvDummy3;
    StaticMiniListItem_t xDummy4;



} StaticList_t;
# 1095 "/home/jins/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/FreeRTOS.h"
typedef struct xSTATIC_TCB
{
    void *pxDummy1;



    StaticListItem_t xDummy3[ 2 ];
    UBaseType_t uxDummy5;
    void *pxDummy6;
    uint8_t ucDummy7[ ( 16 ) ];




        UBaseType_t uxDummy9;


        UBaseType_t uxDummy10[ 2 ];


        UBaseType_t uxDummy12[ 2 ];
# 1130 "/home/jins/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/FreeRTOS.h"
        uint32_t ulDummy18;
        uint8_t ucDummy19;


        uint8_t uxDummy20;
# 1143 "/home/jins/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/FreeRTOS.h"
} StaticTask_t;
# 1159 "/home/jins/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/FreeRTOS.h"
typedef struct xSTATIC_QUEUE
{
    void *pvDummy1[ 3 ];

    union
    {
        void *pvDummy2;
        UBaseType_t uxDummy2;
    } u;

    StaticList_t xDummy3[ 2 ];
    UBaseType_t uxDummy4[ 3 ];
    uint8_t ucDummy5[ 2 ];


        uint8_t ucDummy6;







        UBaseType_t uxDummy8;
        uint8_t ucDummy9;


} StaticQueue_t;
typedef StaticQueue_t StaticSemaphore_t;
# 1203 "/home/jins/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/FreeRTOS.h"
typedef struct xSTATIC_EVENT_GROUP
{
    TickType_t xDummy1;
    StaticList_t xDummy2;


        UBaseType_t uxDummy3;



            uint8_t ucDummy4;


} StaticEventGroup_t;
# 1232 "/home/jins/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/FreeRTOS.h"
typedef struct xSTATIC_TIMER
{
    void *pvDummy1;
    StaticListItem_t xDummy2;
    TickType_t xDummy3;
    void *pvDummy5;
    TaskFunction_t pvDummy6;

        UBaseType_t uxDummy7;

    uint8_t ucDummy8;

} StaticTimer_t;
# 1260 "/home/jins/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/FreeRTOS.h"
typedef struct xSTATIC_STREAM_BUFFER
{
    size_t uxDummy1[ 4 ];
    void * pvDummy2[ 3 ];
    uint8_t ucDummy3;

        UBaseType_t uxDummy4;

} StaticStreamBuffer_t;


typedef StaticStreamBuffer_t StaticMessageBuffer_t;
# 31 "/home/jins/bl_iot_sdk/components/hal_drv/bl602_hal/hal_i2c.c" 2
# 1 "/home/jins/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/task.h" 1
# 36 "/home/jins/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/task.h"
# 1 "/home/jins/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/list.h" 1
# 139 "/home/jins/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/list.h"
struct xLIST;
struct xLIST_ITEM
{
   
    TickType_t xItemValue;
    struct xLIST_ITEM * pxNext;
    struct xLIST_ITEM * pxPrevious;
    void * pvOwner;
    struct xLIST * pvContainer;
   
};
typedef struct xLIST_ITEM ListItem_t;

struct xMINI_LIST_ITEM
{
   
    TickType_t xItemValue;
    struct xLIST_ITEM * pxNext;
    struct xLIST_ITEM * pxPrevious;
};
typedef struct xMINI_LIST_ITEM MiniListItem_t;




typedef struct xLIST
{
   
    volatile UBaseType_t uxNumberOfItems;
    ListItem_t * pxIndex;
    MiniListItem_t xListEnd;
   
} List_t;
# 345 "/home/jins/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/list.h"
void vListInitialise( List_t * const pxList ) ;
# 356 "/home/jins/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/list.h"
void vListInitialiseItem( ListItem_t * const pxItem ) ;
# 369 "/home/jins/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/list.h"
void vListInsert( List_t * const pxList, ListItem_t * const pxNewListItem ) ;
# 390 "/home/jins/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/list.h"
void vListInsertEnd( List_t * const pxList, ListItem_t * const pxNewListItem ) ;
# 405 "/home/jins/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/list.h"
UBaseType_t uxListRemove( ListItem_t * const pxItemToRemove ) ;
# 37 "/home/jins/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/task.h" 2
# 69 "/home/jins/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/task.h"
struct tskTaskControlBlock;
typedef struct tskTaskControlBlock* TaskHandle_t;





typedef BaseType_t (*TaskHookFunction_t)( void * );


typedef enum
{
    eRunning = 0,
    eReady,
    eBlocked,
    eSuspended,
    eDeleted,
    eInvalid
} eTaskState;


typedef enum
{
    eNoAction = 0,
    eSetBits,
    eIncrement,
    eSetValueWithOverwrite,
    eSetValueWithoutOverwrite
} eNotifyAction;




typedef struct xTIME_OUT
{
    BaseType_t xOverflowCount;
    TickType_t xTimeOnEntering;
} TimeOut_t;




typedef struct xMEMORY_REGION
{
    void *pvBaseAddress;
    uint32_t ulLengthInBytes;
    uint32_t ulParameters;
} MemoryRegion_t;




typedef struct xTASK_PARAMETERS
{
    TaskFunction_t pvTaskCode;
    const char * const pcName;
    uint16_t usStackDepth;
    void *pvParameters;
    UBaseType_t uxPriority;
    StackType_t *puxStackBuffer;
    MemoryRegion_t xRegions[ 1 ];



} TaskParameters_t;



typedef struct xTASK_STATUS
{
    TaskHandle_t xHandle;
    const char *pcTaskName;
    UBaseType_t xTaskNumber;
    eTaskState eCurrentState;
    UBaseType_t uxCurrentPriority;
    UBaseType_t uxBasePriority;
    uint32_t ulRunTimeCounter;
    StackType_t *pxStackBase;
    uint16_t usStackHighWaterMark;
} TaskStatus_t;


typedef enum
{
    eAbortSleep = 0,
    eStandardSleep,
    eNoTasksWaitingTimeout
} eSleepModeStatus;
# 330 "/home/jins/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/task.h"
    BaseType_t xTaskCreate( TaskFunction_t pxTaskCode,
                            const char * const pcName,
                            const uint16_t usStackDepth,
                            void * const pvParameters,
                            UBaseType_t uxPriority,
                            TaskHandle_t * const pxCreatedTask ) ;
# 446 "/home/jins/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/task.h"
    TaskHandle_t xTaskCreateStatic( TaskFunction_t pxTaskCode,
                                    const char * const pcName,
                                    const uint32_t ulStackDepth,
                                    void * const pvParameters,
                                    UBaseType_t uxPriority,
                                    StackType_t * const puxStackBuffer,
                                    StaticTask_t * const pxTaskBuffer ) ;
# 665 "/home/jins/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/task.h"
void vTaskAllocateMPURegions( TaskHandle_t xTask, const MemoryRegion_t * const pxRegions ) ;
# 706 "/home/jins/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/task.h"
void vTaskDelete( TaskHandle_t xTaskToDelete ) ;
# 758 "/home/jins/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/task.h"
void vTaskDelay( const TickType_t xTicksToDelay ) ;
# 817 "/home/jins/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/task.h"
void vTaskDelayUntil( TickType_t * const pxPreviousWakeTime, const TickType_t xTimeIncrement ) ;
# 842 "/home/jins/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/task.h"
BaseType_t xTaskAbortDelay( TaskHandle_t xTask ) ;
# 889 "/home/jins/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/task.h"
UBaseType_t uxTaskPriorityGet( const TaskHandle_t xTask ) ;







UBaseType_t uxTaskPriorityGetFromISR( const TaskHandle_t xTask ) ;
# 915 "/home/jins/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/task.h"
eTaskState eTaskGetState( TaskHandle_t xTask ) ;
# 971 "/home/jins/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/task.h"
void vTaskGetInfo( TaskHandle_t xTask, TaskStatus_t *pxTaskStatus, BaseType_t xGetFreeStackSpace, eTaskState eState ) ;
# 1013 "/home/jins/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/task.h"
void vTaskPrioritySet( TaskHandle_t xTask, UBaseType_t uxNewPriority ) ;
# 1064 "/home/jins/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/task.h"
void vTaskSuspend( TaskHandle_t xTaskToSuspend ) ;
# 1113 "/home/jins/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/task.h"
void vTaskResume( TaskHandle_t xTaskToResume ) ;
# 1142 "/home/jins/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/task.h"
BaseType_t xTaskResumeFromISR( TaskHandle_t xTaskToResume ) ;
# 1175 "/home/jins/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/task.h"
void vTaskStartScheduler( void ) ;
# 1231 "/home/jins/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/task.h"
void vTaskEndScheduler( void ) ;
# 1282 "/home/jins/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/task.h"
void vTaskSuspendAll( void ) ;
# 1336 "/home/jins/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/task.h"
BaseType_t xTaskResumeAll( void ) ;
# 1351 "/home/jins/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/task.h"
TickType_t xTaskGetTickCount( void ) ;
BaseType_t xTaskGetTickCount2( TickType_t *ticks, BaseType_t *overflow ) ;
# 1368 "/home/jins/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/task.h"
TickType_t xTaskGetTickCountFromISR( void ) ;
# 1382 "/home/jins/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/task.h"
UBaseType_t uxTaskGetNumberOfTasks( void ) ;
# 1395 "/home/jins/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/task.h"
char *pcTaskGetName( TaskHandle_t xTaskToQuery ) ;
# 1411 "/home/jins/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/task.h"
TaskHandle_t xTaskGetHandle( const char *pcNameToQuery ) ;
# 1438 "/home/jins/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/task.h"
UBaseType_t uxTaskGetStackHighWaterMark( TaskHandle_t xTask ) ;
# 1465 "/home/jins/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/task.h"
uint16_t uxTaskGetStackHighWaterMark2( TaskHandle_t xTask ) ;
# 1529 "/home/jins/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/task.h"
BaseType_t xTaskCallApplicationTaskHook( TaskHandle_t xTask, void *pvParameter ) ;
# 1538 "/home/jins/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/task.h"
TaskHandle_t xTaskGetIdleTaskHandle( void ) ;
# 1637 "/home/jins/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/task.h"
UBaseType_t uxTaskGetSystemState( TaskStatus_t * const pxTaskStatusArray, const UBaseType_t uxArraySize, uint32_t * const pulTotalRunTime ) ;
# 1684 "/home/jins/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/task.h"
void vTaskList( char * pcWriteBuffer ) ;
# 1738 "/home/jins/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/task.h"
void vTaskGetRunTimeStats( char *pcWriteBuffer ) ;
# 1768 "/home/jins/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/task.h"
TickType_t xTaskGetIdleRunTimeCounter( void ) ;
# 1849 "/home/jins/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/task.h"
BaseType_t xTaskGenericNotify( TaskHandle_t xTaskToNotify, uint32_t ulValue, eNotifyAction eAction, uint32_t *pulPreviousNotificationValue ) ;
# 1940 "/home/jins/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/task.h"
BaseType_t xTaskGenericNotifyFromISR( TaskHandle_t xTaskToNotify, uint32_t ulValue, eNotifyAction eAction, uint32_t *pulPreviousNotificationValue, BaseType_t *pxHigherPriorityTaskWoken ) ;
# 2017 "/home/jins/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/task.h"
BaseType_t xTaskNotifyWait( uint32_t ulBitsToClearOnEntry, uint32_t ulBitsToClearOnExit, uint32_t *pulNotificationValue, TickType_t xTicksToWait ) ;
# 2118 "/home/jins/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/task.h"
void vTaskNotifyGiveFromISR( TaskHandle_t xTaskToNotify, BaseType_t *pxHigherPriorityTaskWoken ) ;
# 2187 "/home/jins/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/task.h"
uint32_t ulTaskNotifyTake( BaseType_t xClearCountOnExit, TickType_t xTicksToWait ) ;
# 2203 "/home/jins/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/task.h"
BaseType_t xTaskNotifyStateClear( TaskHandle_t xTask );
# 2224 "/home/jins/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/task.h"
BaseType_t xTaskIncrementTick( void ) ;
# 2257 "/home/jins/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/task.h"
void vTaskPlaceOnEventList( List_t * const pxEventList, const TickType_t xTicksToWait ) ;
void vTaskPlaceOnUnorderedEventList( List_t * pxEventList, const TickType_t xItemValue, const TickType_t xTicksToWait ) ;
# 2271 "/home/jins/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/task.h"
void vTaskPlaceOnEventListRestricted( List_t * const pxEventList, TickType_t xTicksToWait, const BaseType_t xWaitIndefinitely ) ;
# 2297 "/home/jins/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/task.h"
BaseType_t xTaskRemoveFromEventList( const List_t * const pxEventList ) ;
void vTaskRemoveFromUnorderedEventList( ListItem_t * pxEventListItem, const TickType_t xItemValue ) ;
# 2308 "/home/jins/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/task.h"
 void vTaskSwitchContext( void ) ;





TickType_t uxTaskResetEventItemValue( void ) ;




TaskHandle_t xTaskGetCurrentTaskHandle( void ) ;




void vTaskSetTimeOutState( TimeOut_t * const pxTimeOut ) ;





BaseType_t xTaskCheckForTimeOut( TimeOut_t * const pxTimeOut, TickType_t * const pxTicksToWait ) ;





void vTaskMissedYield( void ) ;





BaseType_t xTaskGetSchedulerState( void ) ;





BaseType_t xTaskPriorityInherit( TaskHandle_t const pxMutexHolder ) ;





BaseType_t xTaskPriorityDisinherit( TaskHandle_t const pxMutexHolder ) ;
# 2364 "/home/jins/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/task.h"
void vTaskPriorityDisinheritAfterTimeout( TaskHandle_t const pxMutexHolder, UBaseType_t uxHighestPriorityWaitingTask ) ;




UBaseType_t uxTaskGetTaskNumber( TaskHandle_t xTask ) ;





void vTaskSetTaskNumber( TaskHandle_t xTask, const UBaseType_t uxHandle ) ;
# 2385 "/home/jins/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/task.h"
void vTaskStepTick( const TickType_t xTicksToJump ) ;
void vTaskStepTickSafe( const TickType_t xTicksToJump ) ;
# 2402 "/home/jins/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/task.h"
eSleepModeStatus eTaskConfirmSleepModeStatus( void ) ;





TaskHandle_t pvTaskIncrementMutexHeldCount( void ) ;





void vTaskInternalSetTimeOutState( TimeOut_t * const pxTimeOut ) ;
# 32 "/home/jins/bl_iot_sdk/components/hal_drv/bl602_hal/hal_i2c.c" 2
# 1 "/home/jins/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/semphr.h" 1
# 35 "/home/jins/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/semphr.h"
# 1 "/home/jins/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/queue.h" 1
# 40 "/home/jins/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/queue.h"
# 1 "/home/jins/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/task.h" 1
# 41 "/home/jins/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/queue.h" 2






struct QueueDefinition;
typedef struct QueueDefinition * QueueHandle_t;






typedef struct QueueDefinition * QueueSetHandle_t;






typedef struct QueueDefinition * QueueSetMemberHandle_t;
# 650 "/home/jins/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/queue.h"
BaseType_t xQueueGenericSend( QueueHandle_t xQueue, const void * const pvItemToQueue, TickType_t xTicksToWait, const BaseType_t xCopyPosition ) ;
# 744 "/home/jins/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/queue.h"
BaseType_t xQueuePeek( QueueHandle_t xQueue, void * const pvBuffer, TickType_t xTicksToWait ) ;
# 777 "/home/jins/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/queue.h"
BaseType_t xQueuePeekFromISR( QueueHandle_t xQueue, void * const pvBuffer ) ;
# 868 "/home/jins/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/queue.h"
BaseType_t xQueueReceive( QueueHandle_t xQueue, void * const pvBuffer, TickType_t xTicksToWait ) ;
# 883 "/home/jins/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/queue.h"
UBaseType_t uxQueueMessagesWaiting( const QueueHandle_t xQueue ) ;
# 900 "/home/jins/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/queue.h"
UBaseType_t uxQueueSpacesAvailable( const QueueHandle_t xQueue ) ;
# 914 "/home/jins/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/queue.h"
void vQueueDelete( QueueHandle_t xQueue ) ;
# 1295 "/home/jins/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/queue.h"
BaseType_t xQueueGenericSendFromISR( QueueHandle_t xQueue, const void * const pvItemToQueue, BaseType_t * const pxHigherPriorityTaskWoken, const BaseType_t xCopyPosition ) ;
BaseType_t xQueueGiveFromISR( QueueHandle_t xQueue, BaseType_t * const pxHigherPriorityTaskWoken ) ;
# 1385 "/home/jins/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/queue.h"
BaseType_t xQueueReceiveFromISR( QueueHandle_t xQueue, void * const pvBuffer, BaseType_t * const pxHigherPriorityTaskWoken ) ;





BaseType_t xQueueIsQueueEmptyFromISR( const QueueHandle_t xQueue ) ;
BaseType_t xQueueIsQueueFullFromISR( const QueueHandle_t xQueue ) ;
UBaseType_t uxQueueMessagesWaitingFromISR( const QueueHandle_t xQueue ) ;
# 1404 "/home/jins/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/queue.h"
BaseType_t xQueueCRSendFromISR( QueueHandle_t xQueue, const void *pvItemToQueue, BaseType_t xCoRoutinePreviouslyWoken );
BaseType_t xQueueCRReceiveFromISR( QueueHandle_t xQueue, void *pvBuffer, BaseType_t *pxTaskWoken );
BaseType_t xQueueCRSend( QueueHandle_t xQueue, const void *pvItemToQueue, TickType_t xTicksToWait );
BaseType_t xQueueCRReceive( QueueHandle_t xQueue, void *pvBuffer, TickType_t xTicksToWait );






QueueHandle_t xQueueCreateMutex( const uint8_t ucQueueType ) ;
QueueHandle_t xQueueCreateMutexStatic( const uint8_t ucQueueType, StaticQueue_t *pxStaticQueue ) ;
QueueHandle_t xQueueCreateCountingSemaphore( const UBaseType_t uxMaxCount, const UBaseType_t uxInitialCount ) ;
QueueHandle_t xQueueCreateCountingSemaphoreStatic( const UBaseType_t uxMaxCount, const UBaseType_t uxInitialCount, StaticQueue_t *pxStaticQueue ) ;
BaseType_t xQueueSemaphoreTake( QueueHandle_t xQueue, TickType_t xTicksToWait ) ;
TaskHandle_t xQueueGetMutexHolder( QueueHandle_t xSemaphore ) ;
TaskHandle_t xQueueGetMutexHolderFromISR( QueueHandle_t xSemaphore ) ;





BaseType_t xQueueTakeMutexRecursive( QueueHandle_t xMutex, TickType_t xTicksToWait ) ;
BaseType_t xQueueGiveMutexRecursive( QueueHandle_t xMutex ) ;
# 1458 "/home/jins/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/queue.h"
    void vQueueAddToRegistry( QueueHandle_t xQueue, const char *pcQueueName ) ;
# 1472 "/home/jins/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/queue.h"
    void vQueueUnregisterQueue( QueueHandle_t xQueue ) ;
# 1487 "/home/jins/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/queue.h"
    const char *pcQueueGetName( QueueHandle_t xQueue ) ;
# 1496 "/home/jins/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/queue.h"
    QueueHandle_t xQueueGenericCreate( const UBaseType_t uxQueueLength, const UBaseType_t uxItemSize, const uint8_t ucQueueType ) ;
# 1505 "/home/jins/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/queue.h"
    QueueHandle_t xQueueGenericCreateStatic( const UBaseType_t uxQueueLength, const UBaseType_t uxItemSize, uint8_t *pucQueueStorage, StaticQueue_t *pxStaticQueue, const uint8_t ucQueueType ) ;
# 1556 "/home/jins/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/queue.h"
QueueSetHandle_t xQueueCreateSet( const UBaseType_t uxEventQueueLength ) ;
# 1580 "/home/jins/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/queue.h"
BaseType_t xQueueAddToSet( QueueSetMemberHandle_t xQueueOrSemaphore, QueueSetHandle_t xQueueSet ) ;
# 1599 "/home/jins/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/queue.h"
BaseType_t xQueueRemoveFromSet( QueueSetMemberHandle_t xQueueOrSemaphore, QueueSetHandle_t xQueueSet ) ;
# 1635 "/home/jins/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/queue.h"
QueueSetMemberHandle_t xQueueSelectFromSet( QueueSetHandle_t xQueueSet, const TickType_t xTicksToWait ) ;




QueueSetMemberHandle_t xQueueSelectFromSetFromISR( QueueSetHandle_t xQueueSet ) ;


void vQueueWaitForMessageRestricted( QueueHandle_t xQueue, TickType_t xTicksToWait, const BaseType_t xWaitIndefinitely ) ;
BaseType_t xQueueGenericReset( QueueHandle_t xQueue, BaseType_t xNewQueue ) ;
void vQueueSetQueueNumber( QueueHandle_t xQueue, UBaseType_t uxQueueNumber ) ;
UBaseType_t uxQueueGetQueueNumber( QueueHandle_t xQueue ) ;
uint8_t ucQueueGetQueueType( QueueHandle_t xQueue ) ;
# 36 "/home/jins/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/semphr.h" 2

typedef QueueHandle_t SemaphoreHandle_t;
# 33 "/home/jins/bl_iot_sdk/components/hal_drv/bl602_hal/hal_i2c.c" 2
# 1 "/home/jins/bl_iot_sdk/components/stage/yloop/include/aos/yloop.h" 1
# 12 "/home/jins/bl_iot_sdk/components/stage/yloop/include/aos/yloop.h"
# 1 "/home/jins/bl_iot_sdk/components/stage/yloop/include/event_type_code.h" 1
# 13 "/home/jins/bl_iot_sdk/components/stage/yloop/include/aos/yloop.h" 2
# 99 "/home/jins/bl_iot_sdk/components/stage/yloop/include/aos/yloop.h"
typedef struct {

    uint32_t time;

    uint16_t type;

    uint16_t code;

    unsigned long value;

    unsigned long extra;
} input_event_t;


typedef void (*aos_event_cb)(input_event_t *event, void *private_data);

typedef void (*aos_call_t)(void *arg);

typedef void (*aos_poll_call_t)(int fd, void *arg);
# 128 "/home/jins/bl_iot_sdk/components/stage/yloop/include/aos/yloop.h"
int aos_register_event_filter(uint16_t type, aos_event_cb cb, void *priv);
# 139 "/home/jins/bl_iot_sdk/components/stage/yloop/include/aos/yloop.h"
int aos_unregister_event_filter(uint16_t type, aos_event_cb cb, void *priv);
# 150 "/home/jins/bl_iot_sdk/components/stage/yloop/include/aos/yloop.h"
int aos_post_event(uint16_t type, uint16_t code, unsigned long value);
# 161 "/home/jins/bl_iot_sdk/components/stage/yloop/include/aos/yloop.h"
int aos_poll_read_fd(int fd, aos_poll_call_t action, void *param);
# 170 "/home/jins/bl_iot_sdk/components/stage/yloop/include/aos/yloop.h"
void aos_cancel_poll_read_fd(int fd, aos_poll_call_t action, void *param);
# 181 "/home/jins/bl_iot_sdk/components/stage/yloop/include/aos/yloop.h"
int aos_post_delayed_action(int ms, aos_call_t action, void *arg);
# 190 "/home/jins/bl_iot_sdk/components/stage/yloop/include/aos/yloop.h"
void aos_cancel_delayed_action(int ms, aos_call_t action, void *arg);
# 203 "/home/jins/bl_iot_sdk/components/stage/yloop/include/aos/yloop.h"
int aos_schedule_call(aos_call_t action, void *arg);

typedef void *aos_loop_t;






aos_loop_t aos_loop_init(void);






aos_loop_t aos_current_loop(void);




void aos_loop_run(void);




void aos_loop_exit(void);




void aos_loop_destroy(void);
# 245 "/home/jins/bl_iot_sdk/components/stage/yloop/include/aos/yloop.h"
int aos_loop_schedule_call(aos_loop_t *loop, aos_call_t action, void *arg);
# 258 "/home/jins/bl_iot_sdk/components/stage/yloop/include/aos/yloop.h"
void *aos_loop_schedule_work(int ms, aos_call_t action, void *arg1,
                             aos_call_t fini_cb, void *arg2);
# 268 "/home/jins/bl_iot_sdk/components/stage/yloop/include/aos/yloop.h"
void aos_cancel_work(void *work, aos_call_t action, void *arg1);
# 34 "/home/jins/bl_iot_sdk/components/hal_drv/bl602_hal/hal_i2c.c" 2
# 1 "/home/jins/bl_iot_sdk/components/sys/bloop/looprt/include/looprt.h" 1
# 34 "/home/jins/bl_iot_sdk/components/sys/bloop/looprt/include/looprt.h"
# 1 "/home/jins/bl_iot_sdk/components/sys/bloop/bloop/include/bloop.h" 1
# 38 "/home/jins/bl_iot_sdk/components/sys/bloop/bloop/include/bloop.h"
# 1 "/home/jins/bl_iot_sdk/components/utils/include/utils_list.h" 1
# 36 "/home/jins/bl_iot_sdk/components/utils/include/utils_list.h"
# 1 "/home/jins/bl_iot_sdk/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/8.3.0/include/stddef.h" 1 3 4
# 37 "/home/jins/bl_iot_sdk/components/utils/include/utils_list.h" 2

struct utils_list_hdr
{
    struct utils_list_hdr *next;
};

struct utils_list
{

    struct utils_list_hdr *first;

    struct utils_list_hdr *last;
};
# 62 "/home/jins/bl_iot_sdk/components/utils/include/utils_list.h"
void utils_list_init(struct utils_list *list);
# 75 "/home/jins/bl_iot_sdk/components/utils/include/utils_list.h"
void utils_list_pool_init(struct utils_list *list, void *pool, size_t elmt_size, unsigned int elmt_cnt, void *default_value);
# 85 "/home/jins/bl_iot_sdk/components/utils/include/utils_list.h"
void utils_list_push_back(struct utils_list *list,
                       struct utils_list_hdr *list_hdr);
# 96 "/home/jins/bl_iot_sdk/components/utils/include/utils_list.h"
void utils_list_push_front(struct utils_list *list, struct utils_list_hdr *list_hdr);
# 106 "/home/jins/bl_iot_sdk/components/utils/include/utils_list.h"
struct utils_list_hdr *utils_list_pop_front(struct utils_list *list);
# 119 "/home/jins/bl_iot_sdk/components/utils/include/utils_list.h"
void utils_list_extract(struct utils_list *list, struct utils_list_hdr *list_hdr);
# 131 "/home/jins/bl_iot_sdk/components/utils/include/utils_list.h"
int utils_list_find(struct utils_list *list, struct utils_list_hdr *list_hdr);
# 148 "/home/jins/bl_iot_sdk/components/utils/include/utils_list.h"
void utils_list_insert(struct utils_list * const list, struct utils_list_hdr * const element,
        int (*cmp)(struct utils_list_hdr const *elementA,
        struct utils_list_hdr const *elementB));
# 166 "/home/jins/bl_iot_sdk/components/utils/include/utils_list.h"
void utils_list_insert_after(struct utils_list * const list, struct utils_list_hdr * const prev_element, struct utils_list_hdr * const element);
# 182 "/home/jins/bl_iot_sdk/components/utils/include/utils_list.h"
void utils_list_insert_before(struct utils_list * const list, struct utils_list_hdr * const next_element, struct utils_list_hdr * const element);
# 194 "/home/jins/bl_iot_sdk/components/utils/include/utils_list.h"
void utils_list_concat(struct utils_list *list1, struct utils_list *list2);
# 210 "/home/jins/bl_iot_sdk/components/utils/include/utils_list.h"
void utils_list_remove(struct utils_list *list, struct utils_list_hdr *prev_element, struct utils_list_hdr *element);
# 220 "/home/jins/bl_iot_sdk/components/utils/include/utils_list.h"
static inline int utils_list_is_empty(const struct utils_list *const list)
{
    return (
# 222 "/home/jins/bl_iot_sdk/components/utils/include/utils_list.h" 3 4
           ((void *)0) 
# 222 "/home/jins/bl_iot_sdk/components/utils/include/utils_list.h"
                == list->first);
}
# 234 "/home/jins/bl_iot_sdk/components/utils/include/utils_list.h"
unsigned int utils_list_cnt(const struct utils_list *const list);
# 245 "/home/jins/bl_iot_sdk/components/utils/include/utils_list.h"
static inline struct utils_list_hdr *utils_list_pick(const struct utils_list *const list)
{
    return list->first;
}

static inline struct utils_list_hdr *utils_list_pick_last(const struct utils_list *const list)
{
    return list->last;
}

static inline struct utils_list_hdr *utils_list_next(const struct utils_list_hdr *const list_hdr)
{
    return list_hdr->next;
}
# 280 "/home/jins/bl_iot_sdk/components/utils/include/utils_list.h"
typedef struct utils_dlist_s {
    struct utils_dlist_s *prev;
    struct utils_dlist_s *next;
} utils_dlist_t;

static inline void __utils_dlist_add(utils_dlist_t *node, utils_dlist_t *prev, utils_dlist_t *next)
{
    node->next = next;
    node->prev = prev;

    prev->next = node;
    next->prev = node;
}
# 305 "/home/jins/bl_iot_sdk/components/utils/include/utils_list.h"
static inline void utils_dlist_add(utils_dlist_t *node, utils_dlist_t *queue)
{
    __utils_dlist_add(node, queue, queue->next);
}

static inline void utils_dlist_add_tail(utils_dlist_t *node, utils_dlist_t *queue)
{
    __utils_dlist_add(node, queue->prev, queue);
}

static inline void utils_dlist_del(utils_dlist_t *node)
{
    utils_dlist_t *prev = node->prev;
    utils_dlist_t *next = node->next;

    prev->next = next;
    next->prev = prev;
}

static inline void utils_dlist_init(utils_dlist_t *node)
{
    node->next = node->prev = node;
}

static inline void INIT_UTILS_DLIST_HEAD(utils_dlist_t *list)
{
    list->next = list;
    list->prev = list;
}

static inline int utils_dlist_empty(const utils_dlist_t *head)
{
    return head->next == head;
}
# 434 "/home/jins/bl_iot_sdk/components/utils/include/utils_list.h"
static inline int utils_dlist_entry_number(utils_dlist_t *queue)
{
    int num;
    utils_dlist_t *cur = queue;
    for (num=0;cur->next != queue;cur=cur->next, num++)
        ;

    return num;
}
# 462 "/home/jins/bl_iot_sdk/components/utils/include/utils_list.h"
typedef struct utils_slist_s {
    struct utils_slist_s *next;
} utils_slist_t;

static inline void utils_slist_add(utils_slist_t *node, utils_slist_t *head)
{
    node->next = head->next;
    head->next = node;
}

static inline void utils_slist_add_tail(utils_slist_t *node, utils_slist_t *head)
{
    while (head->next) {
        head = head->next;
    }

    utils_slist_add(node, head);
}

static inline void utils_slist_del(utils_slist_t *node, utils_slist_t *head)
{
    while (head->next) {
        if (head->next == node) {
            head->next = node->next;
            break;
        }

        head = head->next;
    }
}

static inline int utils_slist_empty(const utils_slist_t *head)
{
    return !head->next;
}

static inline void utils_slist_init(utils_slist_t *head)
{
    head->next = 0;
}
# 571 "/home/jins/bl_iot_sdk/components/utils/include/utils_list.h"
static inline int utils_slist_entry_number(utils_slist_t *queue)
{
    int num;
    utils_slist_t *cur = queue;
    for (num=0;cur->next;cur=cur->next, num++)
        ;

    return num;
}
# 39 "/home/jins/bl_iot_sdk/components/sys/bloop/bloop/include/bloop.h" 2

struct loop_ctx;

struct loop_msg {
    struct utils_list_hdr item;
    union {
        void *container;
        struct {
            uint8_t priority;
            uint8_t id_dst;
            uint8_t id_msg;
            uint8_t id_src;
        } header;
    } u;
    void *arg1;
    void *arg2;
    unsigned int time_added;
    unsigned int time_consumed;
};

struct loop_evt_handler_statistic {
    unsigned int time_max;
    unsigned int time_consumed;
    unsigned int time_accumulated;
    unsigned int count_triggered;
};

struct loop_evt_handler {
    const char *name;
    int (*evt)(struct loop_ctx *loop, const struct loop_evt_handler *handler, uint32_t *bitmap_evt, uint32_t *evt_type_map);
    int (*handle)(struct loop_ctx *loop, const struct loop_evt_handler *handler, struct loop_msg *msg);
};




struct loop_ctx {
    TaskHandle_t looper;
    uint32_t bitmap_evt_async;
    uint32_t bitmap_evt_sync;
    uint32_t bitmap_msg;
    uint32_t evt_type_map_async[(32)];
    uint32_t evt_type_map_sync[(32)];
    struct utils_list list[(32)];
    struct loop_evt_handler_statistic statistic[(32)];
    const struct loop_evt_handler *(handlers[(32)]);

    utils_dlist_t timer_dlist;
    utils_dlist_t timer_dued;
};

struct loop_timer {
    utils_dlist_t dlist_item;






    uint8_t flags;

    unsigned int time_added;
    unsigned int time_target;
    int idx_task;
    uint32_t evt_type_map;
    void (*cb)(struct loop_ctx *loop, struct loop_timer *timer, void *arg);
    void *arg;
};


extern struct loop_evt_handler bloop_handler_sys;


int bloop_init(struct loop_ctx *loop);
int bloop_run(struct loop_ctx *loop);
int bloop_status_dump(struct loop_ctx *loop);
int bloop_handler_register(struct loop_ctx *loop, const struct loop_evt_handler *handler, int priority);
int bloop_handler_unregister(struct loop_ctx *loop, const struct loop_evt_handler *handler, int priority);
void bloop_timer_init(struct loop_timer *timer, int use_auto_free);
void bloop_timer_configure(struct loop_timer *timer, unsigned int delay_ms,
        void(*cb)(struct loop_ctx *loop, struct loop_timer *timer, void *arg), void *arg,
        int idx_task, uint32_t evt_type_map);
void bloop_timer_repeat_enable(struct loop_timer *timer);
void bloop_timer_register(struct loop_ctx *loop, struct loop_timer *timer);
void bloop_wait_startup(struct loop_ctx *loop);


void bloop_evt_set_async(struct loop_ctx *loop, unsigned int evt, uint32_t evt_map);
void bloop_evt_set_async_fromISR(struct loop_ctx *loop, unsigned int evt, uint32_t evt_map);

void bloop_evt_set_sync(struct loop_ctx *loop, unsigned int evt, uint32_t evt_map);
void bloop_evt_unset_sync(struct loop_ctx *loop, unsigned int evt);
# 35 "/home/jins/bl_iot_sdk/components/sys/bloop/looprt/include/looprt.h" 2
int looprt_test_cli_init(void);
int looprt_start(StackType_t *proc_stack_looprt, int stack_count, StaticTask_t *proc_task_looprt);
int looprt_start_auto(void);
void looprt_evt_status_dump(void);
void looprt_evt_notify_async(unsigned int task, uint32_t evt_map);
void looprt_evt_notify_async_fromISR(unsigned int task, uint32_t evt_map);
void looprt_evt_schedule(int task, uint32_t evt_map, int delay_ms);


int looprt_handler_register(const struct loop_evt_handler *handler, int priority);
int looprt_timer_register(struct loop_timer *timer);
# 35 "/home/jins/bl_iot_sdk/components/hal_drv/bl602_hal/hal_i2c.c" 2
# 1 "/home/jins/bl_iot_sdk/components/sys/bloop/loopset/include/loopset.h" 1
# 36 "/home/jins/bl_iot_sdk/components/sys/bloop/loopset/include/loopset.h"
int loopset_led_hook_on_looprt(void);
void loopset_led_trigger(int pin, unsigned int timeon_ms);
int loopset_led_cli_init(void);
# 36 "/home/jins/bl_iot_sdk/components/hal_drv/bl602_hal/hal_i2c.c" 2
# 1 "/home/jins/bl_iot_sdk/components/sys/bloop/loopset/include/loopset_i2c.h" 1
# 33 "/home/jins/bl_iot_sdk/components/sys/bloop/loopset/include/loopset_i2c.h"
# 1 "/home/jins/bl_iot_sdk/components/hal_drv/bl602_hal/bl_i2c.h" 1
# 39 "/home/jins/bl_iot_sdk/components/hal_drv/bl602_hal/bl_i2c.h"
typedef struct i2c_msg {
    uint16_t addr;
    uint8_t direct;
    uint8_t subflag;
    uint32_t subaddr;
    uint8_t sublen;
    uint32_t len;
    uint8_t *buf;
    int event;
    int idex;
    int block;
    int stop;
    int ins_num;
    int i2cx;
} i2c_msg_t;

void i2c_set_freq(int freq, int i2cx);
void i2c_gpio_init(int i2cx);
void i2c_clear_status(int i2cx);
void do_write_data(i2c_msg_t *pstmsg);
void do_read_data(i2c_msg_t *pstmsg);
void i2c_transfer_start(i2c_msg_t *pstmsg);
# 34 "/home/jins/bl_iot_sdk/components/sys/bloop/loopset/include/loopset_i2c.h" 2
# 43 "/home/jins/bl_iot_sdk/components/sys/bloop/loopset/include/loopset_i2c.h"
void i2c_async_trigger(i2c_msg_t *pst, int flag);
int loopset_i2c_hook_on_looprt(void);
# 37 "/home/jins/bl_iot_sdk/components/hal_drv/bl602_hal/hal_i2c.c" 2

# 1 "/home/jins/bl_iot_sdk/components/bl602/bl602_std/bl602_std/Device/Bouffalo/BL602/Peripherals/bl602.h" 1
# 64 "/home/jins/bl_iot_sdk/components/bl602/bl602_std/bl602_std/Device/Bouffalo/BL602/Peripherals/bl602.h"
typedef enum
{
# 79 "/home/jins/bl_iot_sdk/components/bl602/bl602_std/bl602_std/Device/Bouffalo/BL602/Peripherals/bl602.h"
  MSOFT_IRQn =3,
  MTIME_IRQn =7,
  MEXT_IRQn =11,
  CLIC_SOFT_PEND_IRQn =12,


  BMX_ERR_IRQn = 16 +0,
  BMX_TO_IRQn = 16 +1,
  L1C_BMX_ERR_IRQn = 16 +2,
  L1C_BMX_TO_IRQn = 16 +3,
  SEC_BMX_ERR_IRQn = 16 +4,
  RF_TOP_INT0_IRQn = 16 +5,
  RF_TOP_INT1_IRQn = 16 +6,
  SDIO_IRQn = 16 +7,
  DMA_BMX_ERR_IRQn = 16 +8,
  SEC_GMAC_IRQn = 16 +9,
  SEC_CDET_IRQn = 16 +10,
  SEC_PKA_IRQn = 16 +11,
  SEC_TRNG_IRQn = 16 +12,
  SEC_AES_IRQn = 16 +13,
  SEC_SHA_IRQn = 16 +14,
  DMA_ALL_IRQn = 16 +15,
  RESERVED0 = 16 +16,
  RESERVED1 = 16 +17,
  RESERVED2 = 16 +18,
  IRTX_IRQn = 16 +19,
  IRRX_IRQn = 16 +20,
  RESERVED3 = 16 +21,
  RESERVED4 = 16 +22,
  SF_CTRL_IRQn = 16 +23,
  RESERVED5 = 16 +24,
  GPADC_DMA_IRQn = 16 +25,
  EFUSE_IRQn = 16 +26,
  SPI_IRQn = 16 +27,
  RESERVED6 = 16 +28,
  UART0_IRQn = 16 +29,
  UART1_IRQn = 16 +30,
  RESERVED7 = 16 +31,
  I2C_IRQn = 16 +32,
  RESERVED8 = 16 +33,
  PWM_IRQn = 16 +34,
  RESERVED9 = 16 +35,
  TIMER_CH0_IRQn = 16 +36,
  TIMER_CH1_IRQn = 16 +37,
  TIMER_WDT_IRQn = 16 +38,
  RESERVED10 = 16 +39,
  RESERVED11 = 16 +40,
  RESERVED12 = 16 +41,
  RESERVED13 = 16 +42,
  RESERVED14 = 16 +43,
  GPIO_INT0_IRQn = 16 +44,
  RESERVED16 = 16 +45,
  RESERVED17 = 16 +46,
  RESERVED18 = 16 +47,
  RESERVED19 = 16 +48,
  RESERVED20 = 16 +49,
  PDS_WAKEUP_IRQn = 16 +50,
  HBN_OUT0_IRQn = 16 +51,
  HBN_OUT1_IRQn = 16 +52,
  BOR_IRQn = 16 +53,
  WIFI_IRQn = 16 +54,
  BZ_PHY_IRQn = 16 +55,
  BLE_IRQn = 16 +56,
  MAC_TXRX_TIMER_IRQn = 16 +57,
  MAC_TXRX_MISC_IRQn = 16 +58,
  MAC_RX_TRG_IRQn = 16 +59,
  MAC_TX_TRG_IRQn = 16 +60,
  MAC_GEN_IRQn = 16 +61,
  MAC_PORT_TRG_IRQn = 16 +62,
  WIFI_IPC_PUBLIC_IRQn = 16 +63,
  IRQn_LAST,
} IRQn_Type;
# 211 "/home/jins/bl_iot_sdk/components/bl602/bl602_std/bl602_std/Device/Bouffalo/BL602/Peripherals/bl602.h"
typedef enum
{
  BL_AHB_MASTER_CPU = 0,
  BL_AHB_MASTER_AP2NP,
  BL_AHB_MASTER_EMAC,
  BL_AHB_MASTER_SEC0,
  BL_AHB_MASTER_DMA,
  BL_AHB_MASTER_606,
  BL_AHB_MASTER_SEC1,
  BL_AHB_MASTER_154,
  BL_AHB_MASTER_CCI,
}BL_AHB_Master_Type;

typedef enum
{
  BL_AHB_SLAVE0_S2F = 0,
  BL_AHB_SLAVE0_MAX,
}BL_AHB_Slave0_Type;

typedef enum
{
  BL_AHB_SLAVE1_GLB = 0x00,
  BL_AHB_SLAVE1_RF = 0x01,
  BL_AHB_SLAVE1_GPIP = 0x02,
  BL_AHB_SLAVE1_DBG = 0x03,
  BL_AHB_SLAVE1_SEC = 0x04,
  BL_AHB_SLAVE1_TZ1 = 0x05,
  BL_AHB_SLAVE1_TZ2 = 0x06,
  BL_AHB_SLAVE1_EFUSE = 0x07,
  BL_AHB_SLAVE1_CCI = 0x08,
  BL_AHB_SLAVE1_L1C = 0x09,

  BL_AHB_SLAVE1_SFC = 0x0B,
  BL_AHB_SLAVE1_DMA = 0x0C,
  BL_AHB_SLAVE1_SDU = 0x0D,
  BL_AHB_SLAVE1_PDSHBN = 0x0E,
  BL_AHB_SLAVE1_WRAM = 0x0F,

  BL_AHB_SLAVE1_UART0 = 0x10,
  BL_AHB_SLAVE1_UART1 = 0x11,
  BL_AHB_SLAVE1_SPI = 0x12,
  BL_AHB_SLAVE1_I2C = 0x13,
  BL_AHB_SLAVE1_PWM = 0x14,
  BL_AHB_SLAVE1_TMR = 0x15,
  BL_AHB_SLAVE1_IRR = 0x16,
  BL_AHB_SLAVE1_CKS =0x17,

  BL_AHB_SLAVE1_MAX =0x18,

}BL_AHB_Slave1_Type;

typedef enum
{
  BL_AHB_SEC_ENG_AES0 = 0,
  BL_AHB_SEC_ENG_AES1,
  BL_AHB_SEC_ENG_SHA0,
  BL_AHB_SEC_ENG_SHA1,
}BL_AHB_Sec_Eng_Type;

typedef enum
{
  BL_AHB_DMA0_CH0 = 0,
  BL_AHB_DMA0_CH1,
  BL_AHB_DMA0_CH2,
  BL_AHB_DMA0_CH3,
  BL_AHB_DMA0_CH4,
}BL_AHB_DMA0_CHNL_Type;

typedef enum
{
  BL_AHB_SLAVE2_WIFI_CFG = 0,
  BL_AHB_SLAVE2_MAX,
}BL_AHB_Slave2_Type;

typedef enum
{
  BL_AHB_SLAVE3_BLE = 0,
  BL_AHB_SLAVE3_MAX,
}BL_AHB_Slave3_Type;

typedef enum
{
  BL_CORE_MASTER_IBUS_CPU = 0,
  BL_CORE_MASTER_DBUS_CPU,
  BL_CORE_MASTER_BUS_S2F,
  BL_CORE_MASTER_MAX,
}BL_Core_Master_Type;

typedef enum
{
  BL_CORE_SLAVE0_DTCM_CPU = 0,
  BL_CORE_SLAVE0_MAX,
}BL_Core_Slave0_Type;

typedef enum
{
  BL_CORE_SLAVE1_XIP_CPU = 0,
  BL_CORE_SLAVE1_ITCM_CPU,
  BL_CORE_SLAVE1_ROM,
  BL_CORE_SLAVE1_MAX,
}BL_Core_Slave1_Type;

typedef enum
{
  BL_CORE_SLAVE2_F2S = 0,
  BL_CORE_SLAVE2_MAX,
}BL_Core_Slave2_Type;





# 1 "/home/jins/bl_iot_sdk/components/bl602/bl602_std/bl602_std/RISCV/Device/Bouffalo/BL602/Startup/system_bl602.h" 1







extern uint32_t SystemCoreClock;

extern void SystemCoreClockUpdate (void);
extern void SystemInit (void);
extern void System_NVIC_SetPriority(IRQn_Type IRQn, uint32_t PreemptPriority, uint32_t SubPriority);
extern void Systick_Stop(void);
extern void Systick_Start(void);
# 324 "/home/jins/bl_iot_sdk/components/bl602/bl602_std/bl602_std/Device/Bouffalo/BL602/Peripherals/bl602.h" 2
# 336 "/home/jins/bl_iot_sdk/components/bl602/bl602_std/bl602_std/Device/Bouffalo/BL602/Peripherals/bl602.h"
# 1 "/home/jins/bl_iot_sdk/components/bl602/bl602_std/bl602_std/RISCV/Core/Include/cmsis_compatible_gcc.h" 1
# 87 "/home/jins/bl_iot_sdk/components/bl602/bl602_std/bl602_std/RISCV/Core/Include/cmsis_compatible_gcc.h"
__attribute__( ( always_inline ) ) static inline void __enable_irq(void)
{
  __asm volatile ("csrsi mstatus, 8");
}

__attribute__( ( always_inline ) ) static inline void __disable_irq(void)
{
  __asm volatile ("csrci mstatus, 8");
}

__attribute__((always_inline)) static inline uint32_t __REV(uint32_t value)
{

    uint32_t res = 0;

    res = (value << 24) | (value >> 24);
    res &= 0xFF0000FF;
    res |= ((value >> 8) & 0x0000FF00) | ((value << 8) & 0x00FF0000);

    return res;
}

__attribute__((always_inline)) static inline uint32_t __REV16(uint32_t value)
{
  return __builtin_bswap16(value);
}

extern void clic_enable_interrupt (uint32_t source);
extern void clic_disable_interrupt ( uint32_t source);
extern void clic_set_pending(uint32_t source);
extern void clic_clear_pending(uint32_t source);
# 337 "/home/jins/bl_iot_sdk/components/bl602/bl602_std/bl602_std/Device/Bouffalo/BL602/Peripherals/bl602.h" 2
# 1 "/home/jins/bl_iot_sdk/components/bl602/bl602_std/bl602_std/RISCV/Core/Include/clic.h" 1
# 338 "/home/jins/bl_iot_sdk/components/bl602/bl602_std/bl602_std/Device/Bouffalo/BL602/Peripherals/bl602.h" 2
# 1 "/home/jins/bl_iot_sdk/components/bl602/bl602_std/bl602_std/RISCV/Core/Include/riscv_encoding.h" 1
# 339 "/home/jins/bl_iot_sdk/components/bl602/bl602_std/bl602_std/Device/Bouffalo/BL602/Peripherals/bl602.h" 2
# 39 "/home/jins/bl_iot_sdk/components/hal_drv/bl602_hal/hal_i2c.c" 2

# 1 "/home/jins/bl_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_i2c.h" 1
# 39 "/home/jins/bl_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_i2c.h"
# 1 "/home/jins/bl_iot_sdk/components/bl602/bl602_std/bl602_std/Device/Bouffalo/BL602/Peripherals/i2c_reg.h" 1
# 39 "/home/jins/bl_iot_sdk/components/bl602/bl602_std/bl602_std/Device/Bouffalo/BL602/Peripherals/i2c_reg.h"
# 1 "/home/jins/bl_iot_sdk/components/bl602/bl602_std/bl602_std/Device/Bouffalo/BL602/Peripherals/bl602.h" 1
# 40 "/home/jins/bl_iot_sdk/components/bl602/bl602_std/bl602_std/Device/Bouffalo/BL602/Peripherals/i2c_reg.h" 2
# 385 "/home/jins/bl_iot_sdk/components/bl602/bl602_std/bl602_std/Device/Bouffalo/BL602/Peripherals/i2c_reg.h"
struct i2c_reg {

    union {
        struct {
            uint32_t cr_i2c_m_en : 1;
            uint32_t cr_i2c_pkt_dir : 1;
            uint32_t cr_i2c_deg_en : 1;
            uint32_t cr_i2c_scl_sync_en : 1;
            uint32_t cr_i2c_sub_addr_en : 1;
            uint32_t cr_i2c_sub_addr_bc : 2;
            uint32_t reserved_7 : 1;
            uint32_t cr_i2c_slv_addr : 7;
            uint32_t reserved_15 : 1;
            uint32_t cr_i2c_pkt_len : 8;
            uint32_t reserved_24_27 : 4;
            uint32_t cr_i2c_deg_cnt : 4;
        }BF;
        uint32_t WORD;
    } i2c_config;


    union {
        struct {
            uint32_t i2c_end_int : 1;
            uint32_t i2c_txf_int : 1;
            uint32_t i2c_rxf_int : 1;
            uint32_t i2c_nak_int : 1;
            uint32_t i2c_arb_int : 1;
            uint32_t i2c_fer_int : 1;
            uint32_t reserved_6_7 : 2;
            uint32_t cr_i2c_end_mask : 1;
            uint32_t cr_i2c_txf_mask : 1;
            uint32_t cr_i2c_rxf_mask : 1;
            uint32_t cr_i2c_nak_mask : 1;
            uint32_t cr_i2c_arb_mask : 1;
            uint32_t cr_i2c_fer_mask : 1;
            uint32_t reserved_14_15 : 2;
            uint32_t cr_i2c_end_clr : 1;
            uint32_t rsvd_17 : 1;
            uint32_t rsvd_18 : 1;
            uint32_t cr_i2c_nak_clr : 1;
            uint32_t cr_i2c_arb_clr : 1;
            uint32_t rsvd_21 : 1;
            uint32_t reserved_22_23 : 2;
            uint32_t cr_i2c_end_en : 1;
            uint32_t cr_i2c_txf_en : 1;
            uint32_t cr_i2c_rxf_en : 1;
            uint32_t cr_i2c_nak_en : 1;
            uint32_t cr_i2c_arb_en : 1;
            uint32_t cr_i2c_fer_en : 1;
            uint32_t reserved_30_31 : 2;
        }BF;
        uint32_t WORD;
    } i2c_int_sts;


    union {
        struct {
            uint32_t cr_i2c_sub_addr_b0 : 8;
            uint32_t cr_i2c_sub_addr_b1 : 8;
            uint32_t cr_i2c_sub_addr_b2 : 8;
            uint32_t cr_i2c_sub_addr_b3 : 8;
        }BF;
        uint32_t WORD;
    } i2c_sub_addr;


    union {
        struct {
            uint32_t sts_i2c_bus_busy : 1;
            uint32_t cr_i2c_bus_busy_clr : 1;
            uint32_t reserved_2_31 : 30;
        }BF;
        uint32_t WORD;
    } i2c_bus_busy;


    union {
        struct {
            uint32_t cr_i2c_prd_s_ph_0 : 8;
            uint32_t cr_i2c_prd_s_ph_1 : 8;
            uint32_t cr_i2c_prd_s_ph_2 : 8;
            uint32_t cr_i2c_prd_s_ph_3 : 8;
        }BF;
        uint32_t WORD;
    } i2c_prd_start;


    union {
        struct {
            uint32_t cr_i2c_prd_p_ph_0 : 8;
            uint32_t cr_i2c_prd_p_ph_1 : 8;
            uint32_t cr_i2c_prd_p_ph_2 : 8;
            uint32_t cr_i2c_prd_p_ph_3 : 8;
        }BF;
        uint32_t WORD;
    } i2c_prd_stop;


    union {
        struct {
            uint32_t cr_i2c_prd_d_ph_0 : 8;
            uint32_t cr_i2c_prd_d_ph_1 : 8;
            uint32_t cr_i2c_prd_d_ph_2 : 8;
            uint32_t cr_i2c_prd_d_ph_3 : 8;
        }BF;
        uint32_t WORD;
    } i2c_prd_data;


    uint8_t RESERVED0x1c[100];


    union {
        struct {
            uint32_t i2c_dma_tx_en : 1;
            uint32_t i2c_dma_rx_en : 1;
            uint32_t tx_fifo_clr : 1;
            uint32_t rx_fifo_clr : 1;
            uint32_t tx_fifo_overflow : 1;
            uint32_t tx_fifo_underflow : 1;
            uint32_t rx_fifo_overflow : 1;
            uint32_t rx_fifo_underflow : 1;
            uint32_t reserved_8_31 : 24;
        }BF;
        uint32_t WORD;
    } i2c_fifo_config_0;


    union {
        struct {
            uint32_t tx_fifo_cnt : 2;
            uint32_t reserved_2_7 : 6;
            uint32_t rx_fifo_cnt : 2;
            uint32_t reserved_10_15 : 6;
            uint32_t tx_fifo_th : 1;
            uint32_t reserved_17_23 : 7;
            uint32_t rx_fifo_th : 1;
            uint32_t reserved_25_31 : 7;
        }BF;
        uint32_t WORD;
    } i2c_fifo_config_1;


    union {
        struct {
            uint32_t i2c_fifo_wdata : 32;
        }BF;
        uint32_t WORD;
    } i2c_fifo_wdata;


    union {
        struct {
            uint32_t i2c_fifo_rdata : 32;
        }BF;
        uint32_t WORD;
    } i2c_fifo_rdata;

};

typedef volatile struct i2c_reg i2c_reg_t;
# 40 "/home/jins/bl_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_i2c.h" 2
# 1 "/home/jins/bl_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_common.h" 1




# 1 "/home/jins/bl_iot_sdk/components/bl602/bl602_std/bl602_std/Common/platform_print/bflb_platform.h" 1




# 1 "/home/jins/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h" 1 3
# 29 "/home/jins/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h" 3
# 1 "/home/jins/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/_ansi.h" 1 3
# 10 "/home/jins/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/_ansi.h" 3
# 1 "/home/jins/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/newlib.h" 1 3
# 14 "/home/jins/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/newlib.h" 3
# 1 "/home/jins/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/_newlib_version.h" 1 3
# 15 "/home/jins/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/newlib.h" 2 3
# 11 "/home/jins/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/_ansi.h" 2 3
# 1 "/home/jins/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/config.h" 1 3



# 1 "/home/jins/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/ieeefp.h" 1 3
# 5 "/home/jins/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/config.h" 2 3
# 1 "/home/jins/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/features.h" 1 3
# 6 "/home/jins/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/config.h" 2 3
# 12 "/home/jins/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/_ansi.h" 2 3
# 30 "/home/jins/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h" 2 3





# 1 "/home/jins/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/cdefs.h" 1 3
# 45 "/home/jins/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/cdefs.h" 3
# 1 "/home/jins/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/_default_types.h" 1 3
# 41 "/home/jins/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/_default_types.h" 3

# 41 "/home/jins/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/_default_types.h" 3
typedef signed char __int8_t;

typedef unsigned char __uint8_t;
# 55 "/home/jins/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/_default_types.h" 3
typedef short int __int16_t;

typedef short unsigned int __uint16_t;
# 77 "/home/jins/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/_default_types.h" 3
typedef long int __int32_t;

typedef long unsigned int __uint32_t;
# 103 "/home/jins/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/_default_types.h" 3
typedef long long int __int64_t;

typedef long long unsigned int __uint64_t;
# 134 "/home/jins/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/_default_types.h" 3
typedef signed char __int_least8_t;

typedef unsigned char __uint_least8_t;
# 160 "/home/jins/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/_default_types.h" 3
typedef short int __int_least16_t;

typedef short unsigned int __uint_least16_t;
# 182 "/home/jins/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/_default_types.h" 3
typedef long int __int_least32_t;

typedef long unsigned int __uint_least32_t;
# 200 "/home/jins/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/_default_types.h" 3
typedef long long int __int_least64_t;

typedef long long unsigned int __uint_least64_t;
# 214 "/home/jins/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/_default_types.h" 3
typedef long long int __intmax_t;







typedef long long unsigned int __uintmax_t;







typedef int __intptr_t;

typedef unsigned int __uintptr_t;
# 46 "/home/jins/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/cdefs.h" 2 3

# 1 "/home/jins/bl_iot_sdk/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/8.3.0/include/stddef.h" 1 3 4
# 48 "/home/jins/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/cdefs.h" 2 3
# 36 "/home/jins/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h" 2 3
# 1 "/home/jins/bl_iot_sdk/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/8.3.0/include/stddef.h" 1 3 4
# 37 "/home/jins/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h" 2 3



# 1 "/home/jins/bl_iot_sdk/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/8.3.0/include/stdarg.h" 1 3 4
# 40 "/home/jins/bl_iot_sdk/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/8.3.0/include/stdarg.h" 3 4
typedef __builtin_va_list __gnuc_va_list;
# 41 "/home/jins/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h" 2 3





typedef __gnuc_va_list va_list;
# 60 "/home/jins/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h" 3
# 1 "/home/jins/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/reent.h" 1 3
# 13 "/home/jins/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/reent.h" 3
# 1 "/home/jins/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/_ansi.h" 1 3
# 14 "/home/jins/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/reent.h" 2 3
# 1 "/home/jins/bl_iot_sdk/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/8.3.0/include/stddef.h" 1 3 4
# 15 "/home/jins/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/reent.h" 2 3
# 1 "/home/jins/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_types.h" 1 3
# 24 "/home/jins/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_types.h" 3
# 1 "/home/jins/bl_iot_sdk/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/8.3.0/include/stddef.h" 1 3 4
# 357 "/home/jins/bl_iot_sdk/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/8.3.0/include/stddef.h" 3 4
typedef unsigned int wint_t;
# 25 "/home/jins/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_types.h" 2 3


# 1 "/home/jins/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/_types.h" 1 3
# 28 "/home/jins/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_types.h" 2 3


typedef long __blkcnt_t;



typedef long __blksize_t;



typedef __uint64_t __fsblkcnt_t;



typedef __uint32_t __fsfilcnt_t;



typedef long _off_t;





typedef int __pid_t;



typedef short __dev_t;



typedef unsigned short __uid_t;


typedef unsigned short __gid_t;



typedef __uint32_t __id_t;







typedef unsigned short __ino_t;
# 90 "/home/jins/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_types.h" 3
typedef __uint32_t __mode_t;





__extension__ typedef long long _off64_t;





typedef _off_t __off_t;


typedef _off64_t __loff_t;


typedef long __key_t;







typedef long _fpos_t;
# 131 "/home/jins/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_types.h" 3
typedef unsigned int __size_t;
# 147 "/home/jins/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_types.h" 3
typedef signed int _ssize_t;
# 158 "/home/jins/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_types.h" 3
typedef _ssize_t __ssize_t;



typedef struct
{
  int __count;
  union
  {
    wint_t __wch;
    unsigned char __wchb[4];
  } __value;
} _mbstate_t;




typedef void *_iconv_t;






typedef unsigned long __clock_t;






typedef __int_least64_t __time_t;





typedef unsigned long __clockid_t;


typedef unsigned long __timer_t;


typedef __uint8_t __sa_family_t;



typedef __uint32_t __socklen_t;


typedef int __nl_item;
typedef unsigned short __nlink_t;
typedef long __suseconds_t;
typedef unsigned long __useconds_t;







typedef __builtin_va_list __va_list;
# 16 "/home/jins/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/reent.h" 2 3






typedef unsigned long __ULong;
# 34 "/home/jins/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/reent.h" 3
# 1 "/home/jins/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/lock.h" 1 3
# 11 "/home/jins/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/lock.h" 3
typedef int _LOCK_T;
typedef int _LOCK_RECURSIVE_T;
# 35 "/home/jins/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/reent.h" 2 3
typedef _LOCK_RECURSIVE_T _flock_t;







struct _reent;

struct __locale_t;






struct _Bigint
{
  struct _Bigint *_next;
  int _k, _maxwds, _sign, _wds;
  __ULong _x[1];
};


struct __tm
{
  int __tm_sec;
  int __tm_min;
  int __tm_hour;
  int __tm_mday;
  int __tm_mon;
  int __tm_year;
  int __tm_wday;
  int __tm_yday;
  int __tm_isdst;
};







struct _on_exit_args {
 void * _fnargs[32];
 void * _dso_handle[32];

 __ULong _fntypes;


 __ULong _is_cxa;
};
# 98 "/home/jins/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/reent.h" 3
struct _atexit {
 struct _atexit *_next;
 int _ind;

 void (*_fns[32])(void);
        struct _on_exit_args _on_exit_args;
};
# 122 "/home/jins/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/reent.h" 3
struct __sbuf {
 unsigned char *_base;
 int _size;
};
# 186 "/home/jins/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/reent.h" 3
struct __sFILE {
  unsigned char *_p;
  int _r;
  int _w;
  short _flags;
  short _file;
  struct __sbuf _bf;
  int _lbfsize;






  void * _cookie;

  _ssize_t (*_read) (struct _reent *, void *,
        char *, int);
  _ssize_t (*_write) (struct _reent *, void *,
         const char *,
         int);
  _fpos_t (*_seek) (struct _reent *, void *, _fpos_t, int);
  int (*_close) (struct _reent *, void *);


  struct __sbuf _ub;
  unsigned char *_up;
  int _ur;


  unsigned char _ubuf[3];
  unsigned char _nbuf[1];


  struct __sbuf _lb;


  int _blksize;
  _off_t _offset;


  struct _reent *_data;



  _flock_t _lock;

  _mbstate_t _mbstate;
  int _flags2;
};
# 292 "/home/jins/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/reent.h" 3
typedef struct __sFILE __FILE;



struct _glue
{
  struct _glue *_next;
  int _niobs;
  __FILE *_iobs;
};
# 324 "/home/jins/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/reent.h" 3
struct _rand48 {
  unsigned short _seed[3];
  unsigned short _mult[3];
  unsigned short _add;




};
# 613 "/home/jins/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/reent.h" 3
struct _reent
{
  int _errno;




  __FILE *_stdin, *_stdout, *_stderr;

  int _inc;
  char _emergency[25];


  int _unspecified_locale_info;
  struct __locale_t *_locale;

  int __sdidinit;

  void (*__cleanup) (struct _reent *);


  struct _Bigint *_result;
  int _result_k;
  struct _Bigint *_p5s;
  struct _Bigint **_freelist;


  int _cvtlen;
  char *_cvtbuf;

  union
    {
      struct
        {
          unsigned int _unused_rand;
          char * _strtok_last;
          char _asctime_buf[26];
          struct __tm _localtime_buf;
          int _gamma_signgam;
          __extension__ unsigned long long _rand_next;
          struct _rand48 _r48;
          _mbstate_t _mblen_state;
          _mbstate_t _mbtowc_state;
          _mbstate_t _wctomb_state;
          char _l64a_buf[8];
          char _signal_buf[24];
          int _getdate_err;
          _mbstate_t _mbrlen_state;
          _mbstate_t _mbrtowc_state;
          _mbstate_t _mbsrtowcs_state;
          _mbstate_t _wcrtomb_state;
          _mbstate_t _wcsrtombs_state;
   int _h_errno;
        } _reent;



      struct
        {

          unsigned char * _nextf[30];
          unsigned int _nmalloc[30];
        } _unused;
    } _new;



  struct _atexit *_atexit;
  struct _atexit _atexit0;



  void (**(_sig_func))(int);




  struct _glue __sglue;

  __FILE __sf[3];

};
# 819 "/home/jins/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/reent.h" 3
extern struct _reent *_impure_ptr ;
extern struct _reent *const _global_impure_ptr ;

void _reclaim_reent (struct _reent *);
# 61 "/home/jins/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h" 2 3
# 1 "/home/jins/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/types.h" 1 3
# 28 "/home/jins/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/types.h" 3
typedef __uint8_t u_int8_t;


typedef __uint16_t u_int16_t;


typedef __uint32_t u_int32_t;


typedef __uint64_t u_int64_t;

typedef __intptr_t register_t;






# 1 "/home/jins/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_stdint.h" 1 3
# 20 "/home/jins/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_stdint.h" 3
typedef __int8_t int8_t ;



typedef __uint8_t uint8_t ;







typedef __int16_t int16_t ;



typedef __uint16_t uint16_t ;







typedef __int32_t int32_t ;



typedef __uint32_t uint32_t ;







typedef __int64_t int64_t ;



typedef __uint64_t uint64_t ;






typedef __intmax_t intmax_t;




typedef __uintmax_t uintmax_t;




typedef __intptr_t intptr_t;




typedef __uintptr_t uintptr_t;
# 47 "/home/jins/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/types.h" 2 3


# 1 "/home/jins/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/endian.h" 1 3





# 1 "/home/jins/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/_endian.h" 1 3
# 7 "/home/jins/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/endian.h" 2 3
# 50 "/home/jins/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/types.h" 2 3
# 1 "/home/jins/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/select.h" 1 3
# 14 "/home/jins/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/select.h" 3
# 1 "/home/jins/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_sigset.h" 1 3
# 41 "/home/jins/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_sigset.h" 3
typedef unsigned long __sigset_t;
# 15 "/home/jins/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/select.h" 2 3
# 1 "/home/jins/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_timeval.h" 1 3
# 35 "/home/jins/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_timeval.h" 3
typedef __suseconds_t suseconds_t;




typedef __int_least64_t time_t;
# 52 "/home/jins/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_timeval.h" 3
struct timeval {
 time_t tv_sec;
 suseconds_t tv_usec;
};
# 16 "/home/jins/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/select.h" 2 3
# 1 "/home/jins/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/timespec.h" 1 3
# 38 "/home/jins/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/timespec.h" 3
# 1 "/home/jins/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_timespec.h" 1 3
# 45 "/home/jins/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_timespec.h" 3
struct timespec {
 time_t tv_sec;
 long tv_nsec;
};
# 39 "/home/jins/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/timespec.h" 2 3
# 58 "/home/jins/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/timespec.h" 3
struct itimerspec {
 struct timespec it_interval;
 struct timespec it_value;
};
# 17 "/home/jins/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/select.h" 2 3



typedef __sigset_t sigset_t;
# 34 "/home/jins/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/select.h" 3
typedef unsigned long fd_mask;







typedef struct _types_fd_set {
 fd_mask fds_bits[(((64)+(((sizeof (fd_mask) * 8))-1))/((sizeof (fd_mask) * 8)))];
} _types_fd_set;
# 60 "/home/jins/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/select.h" 3


int select (int __n, _types_fd_set *__readfds, _types_fd_set *__writefds, _types_fd_set *__exceptfds, struct timeval *__timeout)
                                                   ;

int pselect (int __n, _types_fd_set *__readfds, _types_fd_set *__writefds, _types_fd_set *__exceptfds, const struct timespec *__timeout, const sigset_t *__set)

                           ;



# 51 "/home/jins/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/types.h" 2 3




typedef __uint32_t in_addr_t;




typedef __uint16_t in_port_t;



typedef __uintptr_t u_register_t;






typedef unsigned char u_char;



typedef unsigned short u_short;



typedef unsigned int u_int;



typedef unsigned long u_long;







typedef unsigned short ushort;
typedef unsigned int uint;
typedef unsigned long ulong;



typedef __blkcnt_t blkcnt_t;




typedef __blksize_t blksize_t;




typedef unsigned long clock_t;
# 119 "/home/jins/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/types.h" 3
typedef long daddr_t;



typedef char * caddr_t;




typedef __fsblkcnt_t fsblkcnt_t;
typedef __fsfilcnt_t fsfilcnt_t;




typedef __id_t id_t;




typedef __ino_t ino_t;
# 157 "/home/jins/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/types.h" 3
typedef __off_t off_t;



typedef __dev_t dev_t;



typedef __uid_t uid_t;



typedef __gid_t gid_t;




typedef __pid_t pid_t;




typedef __key_t key_t;




typedef _ssize_t ssize_t;




typedef __mode_t mode_t;




typedef __nlink_t nlink_t;




typedef __clockid_t clockid_t;





typedef __timer_t timer_t;





typedef __useconds_t useconds_t;
# 220 "/home/jins/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/types.h" 3
typedef __int64_t sbintime_t;


# 1 "/home/jins/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_pthreadtypes.h" 1 3
# 23 "/home/jins/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_pthreadtypes.h" 3
# 1 "/home/jins/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/sched.h" 1 3
# 48 "/home/jins/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/sched.h" 3
struct sched_param {
  int sched_priority;
# 61 "/home/jins/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/sched.h" 3
};
# 24 "/home/jins/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_pthreadtypes.h" 2 3
# 32 "/home/jins/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_pthreadtypes.h" 3
typedef __uint32_t pthread_t;
# 61 "/home/jins/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_pthreadtypes.h" 3
typedef struct {
  int is_initialized;
  void *stackaddr;
  int stacksize;
  int contentionscope;
  int inheritsched;
  int schedpolicy;
  struct sched_param schedparam;





  int detachstate;
} pthread_attr_t;
# 154 "/home/jins/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_pthreadtypes.h" 3
typedef __uint32_t pthread_mutex_t;

typedef struct {
  int is_initialized;
# 168 "/home/jins/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_pthreadtypes.h" 3
  int recursive;
} pthread_mutexattr_t;






typedef __uint32_t pthread_cond_t;



typedef struct {
  int is_initialized;
  clock_t clock;



} pthread_condattr_t;



typedef __uint32_t pthread_key_t;

typedef struct {
  int is_initialized;
  int init_executed;
} pthread_once_t;
# 224 "/home/jins/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/types.h" 2 3
# 1 "/home/jins/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/types.h" 1 3
# 225 "/home/jins/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/types.h" 2 3
# 62 "/home/jins/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h" 2 3




typedef __FILE FILE;






typedef _fpos_t fpos_t;





# 1 "/home/jins/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/stdio.h" 1 3
# 80 "/home/jins/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h" 2 3
# 181 "/home/jins/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h" 3
char * ctermid (char *);




FILE * tmpfile (void);
char * tmpnam (char *);

char * tempnam (const char *, const char *) __attribute__((__malloc__)) __attribute__((__warn_unused_result__));

int fclose (FILE *);
int fflush (FILE *);
FILE * freopen (const char *restrict, const char *restrict, FILE *restrict);
void setbuf (FILE *restrict, char *restrict);
int setvbuf (FILE *restrict, char *restrict, int, size_t);
int fprintf (FILE *restrict, const char *restrict, ...)
               __attribute__ ((__format__ (__printf__, 2, 3)));
int fscanf (FILE *restrict, const char *restrict, ...)
               __attribute__ ((__format__ (__scanf__, 2, 3)));
int printf (const char *restrict, ...)
               __attribute__ ((__format__ (__printf__, 1, 2)));
int scanf (const char *restrict, ...)
               __attribute__ ((__format__ (__scanf__, 1, 2)));
int sscanf (const char *restrict, const char *restrict, ...)
               __attribute__ ((__format__ (__scanf__, 2, 3)));
int vfprintf (FILE *restrict, const char *restrict, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 2, 0)));
int vprintf (const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 1, 0)));
int vsprintf (char *restrict, const char *restrict, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 2, 0)));
int fgetc (FILE *);
char * fgets (char *restrict, int, FILE *restrict);
int fputc (int, FILE *);
int fputs (const char *restrict, FILE *restrict);
int getc (FILE *);
int getchar (void);
char * gets (char *);
int putc (int, FILE *);
int putchar (int);
int puts (const char *);
int ungetc (int, FILE *);
size_t fread (void *restrict, size_t _size, size_t _n, FILE *restrict);
size_t fwrite (const void *restrict , size_t _size, size_t _n, FILE *);



int fgetpos (FILE *restrict, fpos_t *restrict);

int fseek (FILE *, long, int);



int fsetpos (FILE *, const fpos_t *);

long ftell ( FILE *);
void rewind (FILE *);
void clearerr (FILE *);
int feof (FILE *);
int ferror (FILE *);
void perror (const char *);

FILE * fopen (const char *restrict _name, const char *restrict _type);
int sprintf (char *restrict, const char *restrict, ...)
               __attribute__ ((__format__ (__printf__, 2, 3)));
int remove (const char *);
int rename (const char *, const char *);
# 257 "/home/jins/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h" 3
int fseeko (FILE *, off_t, int);
off_t ftello (FILE *);







int snprintf (char *restrict, size_t, const char *restrict, ...)
               __attribute__ ((__format__ (__printf__, 3, 4)));
int vsnprintf (char *restrict, size_t, const char *restrict, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 3, 0)));
int vfscanf (FILE *restrict, const char *restrict, __gnuc_va_list)
               __attribute__ ((__format__ (__scanf__, 2, 0)));
int vscanf (const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__scanf__, 1, 0)));
int vsscanf (const char *restrict, const char *restrict, __gnuc_va_list)
               __attribute__ ((__format__ (__scanf__, 2, 0)));
# 284 "/home/jins/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h" 3
int asiprintf (char **, const char *, ...)
               __attribute__ ((__format__ (__printf__, 2, 3)));
char * asniprintf (char *, size_t *, const char *, ...)
               __attribute__ ((__format__ (__printf__, 3, 4)));
char * asnprintf (char *restrict, size_t *restrict, const char *restrict, ...)
               __attribute__ ((__format__ (__printf__, 3, 4)));

int diprintf (int, const char *, ...)
               __attribute__ ((__format__ (__printf__, 2, 3)));

int fiprintf (FILE *, const char *, ...)
               __attribute__ ((__format__ (__printf__, 2, 3)));
int fiscanf (FILE *, const char *, ...)
               __attribute__ ((__format__ (__scanf__, 2, 3)));
int iprintf (const char *, ...)
               __attribute__ ((__format__ (__printf__, 1, 2)));
int iscanf (const char *, ...)
               __attribute__ ((__format__ (__scanf__, 1, 2)));
int siprintf (char *, const char *, ...)
               __attribute__ ((__format__ (__printf__, 2, 3)));
int siscanf (const char *, const char *, ...)
               __attribute__ ((__format__ (__scanf__, 2, 3)));
int sniprintf (char *, size_t, const char *, ...)
               __attribute__ ((__format__ (__printf__, 3, 4)));
int vasiprintf (char **, const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 2, 0)));
char * vasniprintf (char *, size_t *, const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 3, 0)));
char * vasnprintf (char *, size_t *, const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 3, 0)));
int vdiprintf (int, const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 2, 0)));
int vfiprintf (FILE *, const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 2, 0)));
int vfiscanf (FILE *, const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__scanf__, 2, 0)));
int viprintf (const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 1, 0)));
int viscanf (const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__scanf__, 1, 0)));
int vsiprintf (char *, const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 2, 0)));
int vsiscanf (const char *, const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__scanf__, 2, 0)));
int vsniprintf (char *, size_t, const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 3, 0)));
# 339 "/home/jins/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h" 3
FILE * fdopen (int, const char *);

int fileno (FILE *);


int pclose (FILE *);
FILE * popen (const char *, const char *);



void setbuffer (FILE *, char *, int);
int setlinebuf (FILE *);



int getw (FILE *);
int putw (int, FILE *);


int getc_unlocked (FILE *);
int getchar_unlocked (void);
void flockfile (FILE *);
int ftrylockfile (FILE *);
void funlockfile (FILE *);
int putc_unlocked (int, FILE *);
int putchar_unlocked (int);
# 374 "/home/jins/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h" 3
int dprintf (int, const char *restrict, ...)
               __attribute__ ((__format__ (__printf__, 2, 3)));

FILE * fmemopen (void *restrict, size_t, const char *restrict);


FILE * open_memstream (char **, size_t *);
int vdprintf (int, const char *restrict, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 2, 0)));



int renameat (int, const char *, int, const char *);
# 396 "/home/jins/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h" 3
int _asiprintf_r (struct _reent *, char **, const char *, ...)
               __attribute__ ((__format__ (__printf__, 3, 4)));
char * _asniprintf_r (struct _reent *, char *, size_t *, const char *, ...)
               __attribute__ ((__format__ (__printf__, 4, 5)));
char * _asnprintf_r (struct _reent *, char *restrict, size_t *restrict, const char *restrict, ...)
               __attribute__ ((__format__ (__printf__, 4, 5)));
int _asprintf_r (struct _reent *, char **restrict, const char *restrict, ...)
               __attribute__ ((__format__ (__printf__, 3, 4)));
int _diprintf_r (struct _reent *, int, const char *, ...)
               __attribute__ ((__format__ (__printf__, 3, 4)));
int _dprintf_r (struct _reent *, int, const char *restrict, ...)
               __attribute__ ((__format__ (__printf__, 3, 4)));
int _fclose_r (struct _reent *, FILE *);
int _fcloseall_r (struct _reent *);
FILE * _fdopen_r (struct _reent *, int, const char *);
int _fflush_r (struct _reent *, FILE *);
int _fgetc_r (struct _reent *, FILE *);
int _fgetc_unlocked_r (struct _reent *, FILE *);
char * _fgets_r (struct _reent *, char *restrict, int, FILE *restrict);
char * _fgets_unlocked_r (struct _reent *, char *restrict, int, FILE *restrict);




int _fgetpos_r (struct _reent *, FILE *, fpos_t *);
int _fsetpos_r (struct _reent *, FILE *, const fpos_t *);

int _fiprintf_r (struct _reent *, FILE *, const char *, ...)
               __attribute__ ((__format__ (__printf__, 3, 4)));
int _fiscanf_r (struct _reent *, FILE *, const char *, ...)
               __attribute__ ((__format__ (__scanf__, 3, 4)));
FILE * _fmemopen_r (struct _reent *, void *restrict, size_t, const char *restrict);
FILE * _fopen_r (struct _reent *, const char *restrict, const char *restrict);
FILE * _freopen_r (struct _reent *, const char *restrict, const char *restrict, FILE *restrict);
int _fprintf_r (struct _reent *, FILE *restrict, const char *restrict, ...)
               __attribute__ ((__format__ (__printf__, 3, 4)));
int _fpurge_r (struct _reent *, FILE *);
int _fputc_r (struct _reent *, int, FILE *);
int _fputc_unlocked_r (struct _reent *, int, FILE *);
int _fputs_r (struct _reent *, const char *restrict, FILE *restrict);
int _fputs_unlocked_r (struct _reent *, const char *restrict, FILE *restrict);
size_t _fread_r (struct _reent *, void *restrict, size_t _size, size_t _n, FILE *restrict);
size_t _fread_unlocked_r (struct _reent *, void *restrict, size_t _size, size_t _n, FILE *restrict);
int _fscanf_r (struct _reent *, FILE *restrict, const char *restrict, ...)
               __attribute__ ((__format__ (__scanf__, 3, 4)));
int _fseek_r (struct _reent *, FILE *, long, int);
int _fseeko_r (struct _reent *, FILE *, _off_t, int);
long _ftell_r (struct _reent *, FILE *);
_off_t _ftello_r (struct _reent *, FILE *);
void _rewind_r (struct _reent *, FILE *);
size_t _fwrite_r (struct _reent *, const void *restrict, size_t _size, size_t _n, FILE *restrict);
size_t _fwrite_unlocked_r (struct _reent *, const void *restrict, size_t _size, size_t _n, FILE *restrict);
int _getc_r (struct _reent *, FILE *);
int _getc_unlocked_r (struct _reent *, FILE *);
int _getchar_r (struct _reent *);
int _getchar_unlocked_r (struct _reent *);
char * _gets_r (struct _reent *, char *);
int _iprintf_r (struct _reent *, const char *, ...)
               __attribute__ ((__format__ (__printf__, 2, 3)));
int _iscanf_r (struct _reent *, const char *, ...)
               __attribute__ ((__format__ (__scanf__, 2, 3)));
FILE * _open_memstream_r (struct _reent *, char **, size_t *);
void _perror_r (struct _reent *, const char *);
int _printf_r (struct _reent *, const char *restrict, ...)
               __attribute__ ((__format__ (__printf__, 2, 3)));
int _putc_r (struct _reent *, int, FILE *);
int _putc_unlocked_r (struct _reent *, int, FILE *);
int _putchar_unlocked_r (struct _reent *, int);
int _putchar_r (struct _reent *, int);
int _puts_r (struct _reent *, const char *);
int _remove_r (struct _reent *, const char *);
int _rename_r (struct _reent *,
      const char *_old, const char *_new);
int _scanf_r (struct _reent *, const char *restrict, ...)
               __attribute__ ((__format__ (__scanf__, 2, 3)));
int _siprintf_r (struct _reent *, char *, const char *, ...)
               __attribute__ ((__format__ (__printf__, 3, 4)));
int _siscanf_r (struct _reent *, const char *, const char *, ...)
               __attribute__ ((__format__ (__scanf__, 3, 4)));
int _sniprintf_r (struct _reent *, char *, size_t, const char *, ...)
               __attribute__ ((__format__ (__printf__, 4, 5)));
int _snprintf_r (struct _reent *, char *restrict, size_t, const char *restrict, ...)
               __attribute__ ((__format__ (__printf__, 4, 5)));
int _sprintf_r (struct _reent *, char *restrict, const char *restrict, ...)
               __attribute__ ((__format__ (__printf__, 3, 4)));
int _sscanf_r (struct _reent *, const char *restrict, const char *restrict, ...)
               __attribute__ ((__format__ (__scanf__, 3, 4)));
char * _tempnam_r (struct _reent *, const char *, const char *);
FILE * _tmpfile_r (struct _reent *);
char * _tmpnam_r (struct _reent *, char *);
int _ungetc_r (struct _reent *, int, FILE *);
int _vasiprintf_r (struct _reent *, char **, const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 3, 0)));
char * _vasniprintf_r (struct _reent*, char *, size_t *, const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 4, 0)));
char * _vasnprintf_r (struct _reent*, char *, size_t *, const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 4, 0)));
int _vasprintf_r (struct _reent *, char **, const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 3, 0)));
int _vdiprintf_r (struct _reent *, int, const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 3, 0)));
int _vdprintf_r (struct _reent *, int, const char *restrict, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 3, 0)));
int _vfiprintf_r (struct _reent *, FILE *, const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 3, 0)));
int _vfiscanf_r (struct _reent *, FILE *, const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__scanf__, 3, 0)));
int _vfprintf_r (struct _reent *, FILE *restrict, const char *restrict, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 3, 0)));
int _vfscanf_r (struct _reent *, FILE *restrict, const char *restrict, __gnuc_va_list)
               __attribute__ ((__format__ (__scanf__, 3, 0)));
int _viprintf_r (struct _reent *, const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 2, 0)));
int _viscanf_r (struct _reent *, const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__scanf__, 2, 0)));
int _vprintf_r (struct _reent *, const char *restrict, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 2, 0)));
int _vscanf_r (struct _reent *, const char *restrict, __gnuc_va_list)
               __attribute__ ((__format__ (__scanf__, 2, 0)));
int _vsiprintf_r (struct _reent *, char *, const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 3, 0)));
int _vsiscanf_r (struct _reent *, const char *, const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__scanf__, 3, 0)));
int _vsniprintf_r (struct _reent *, char *, size_t, const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 4, 0)));
int _vsnprintf_r (struct _reent *, char *restrict, size_t, const char *restrict, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 4, 0)));
int _vsprintf_r (struct _reent *, char *restrict, const char *restrict, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 3, 0)));
int _vsscanf_r (struct _reent *, const char *restrict, const char *restrict, __gnuc_va_list)
               __attribute__ ((__format__ (__scanf__, 3, 0)));



int fpurge (FILE *);
ssize_t __getdelim (char **, size_t *, int, FILE *);
ssize_t __getline (char **, size_t *, FILE *);


void clearerr_unlocked (FILE *);
int feof_unlocked (FILE *);
int ferror_unlocked (FILE *);
int fileno_unlocked (FILE *);
int fflush_unlocked (FILE *);
int fgetc_unlocked (FILE *);
int fputc_unlocked (int, FILE *);
size_t fread_unlocked (void *restrict, size_t _size, size_t _n, FILE *restrict);
size_t fwrite_unlocked (const void *restrict , size_t _size, size_t _n, FILE *);
# 577 "/home/jins/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h" 3
int __srget_r (struct _reent *, FILE *);
int __swbuf_r (struct _reent *, int, FILE *);
# 601 "/home/jins/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h" 3
FILE *funopen (const void *__cookie,
  int (*__readfn)(void *__cookie, char *__buf,
    int __n),
  int (*__writefn)(void *__cookie, const char *__buf,
     int __n),
  fpos_t (*__seekfn)(void *__cookie, fpos_t __off, int __whence),
  int (*__closefn)(void *__cookie));
FILE *_funopen_r (struct _reent *, const void *__cookie,
  int (*__readfn)(void *__cookie, char *__buf,
    int __n),
  int (*__writefn)(void *__cookie, const char *__buf,
     int __n),
  fpos_t (*__seekfn)(void *__cookie, fpos_t __off, int __whence),
  int (*__closefn)(void *__cookie));
# 687 "/home/jins/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h" 3
static __inline__ int __sputc_r(struct _reent *_ptr, int _c, FILE *_p) {




 if (--_p->_w >= 0 || (_p->_w >= _p->_lbfsize && (char)_c != '\n'))
  return (*_p->_p++ = _c);
 else
  return (__swbuf_r(_ptr, _c, _p));
}
# 741 "/home/jins/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h" 3
static __inline int
_getchar_unlocked(void)
{
 struct _reent *_ptr;

 _ptr = _impure_ptr;
 return ((--(((_ptr)->_stdin))->_r < 0 ? __srget_r(_ptr, ((_ptr)->_stdin)) : (int)(*(((_ptr)->_stdin))->_p++)));
}

static __inline int
_putchar_unlocked(int _c)
{
 struct _reent *_ptr;

 _ptr = _impure_ptr;
 return (__sputc_r(_ptr, _c, ((_ptr)->_stdout)));
}
# 797 "/home/jins/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h" 3

# 6 "/home/jins/bl_iot_sdk/components/bl602/bl602_std/bl602_std/Common/platform_print/bflb_platform.h" 2

# 1 "/home/jins/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/string.h" 1 3
# 17 "/home/jins/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/string.h" 3
# 1 "/home/jins/bl_iot_sdk/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/8.3.0/include/stddef.h" 1 3 4
# 18 "/home/jins/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/string.h" 2 3


# 1 "/home/jins/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_locale.h" 1 3
# 9 "/home/jins/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_locale.h" 3
struct __locale_t;
typedef struct __locale_t *locale_t;
# 21 "/home/jins/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/string.h" 2 3



# 1 "/home/jins/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/strings.h" 1 3
# 44 "/home/jins/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/strings.h" 3


int bcmp(const void *, const void *, size_t) __attribute__((__pure__));
void bcopy(const void *, void *, size_t);
void bzero(void *, size_t);


void explicit_bzero(void *, size_t);


int ffs(int) __attribute__((__const__));


int ffsl(long) __attribute__((__const__));
int ffsll(long long) __attribute__((__const__));
int fls(int) __attribute__((__const__));
int flsl(long) __attribute__((__const__));
int flsll(long long) __attribute__((__const__));


char *index(const char *, int) __attribute__((__pure__));
char *rindex(const char *, int) __attribute__((__pure__));

int strcasecmp(const char *, const char *) __attribute__((__pure__));
int strncasecmp(const char *, const char *, size_t) __attribute__((__pure__));


int strcasecmp_l (const char *, const char *, locale_t);
int strncasecmp_l (const char *, const char *, size_t, locale_t);


# 25 "/home/jins/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/string.h" 2 3




void * memchr (const void *, int, size_t);
int memcmp (const void *, const void *, size_t);
void * memcpy (void *restrict, const void *restrict, size_t);
void * memmove (void *, const void *, size_t);
void * memset (void *, int, size_t);
char *strcat (char *restrict, const char *restrict);
char *strchr (const char *, int);
int strcmp (const char *, const char *);
int strcoll (const char *, const char *);
char *strcpy (char *restrict, const char *restrict);
size_t strcspn (const char *, const char *);
char *strerror (int);
size_t strlen (const char *);
char *strncat (char *restrict, const char *restrict, size_t);
int strncmp (const char *, const char *, size_t);
char *strncpy (char *restrict, const char *restrict, size_t);
char *strpbrk (const char *, const char *);
char *strrchr (const char *, int);
size_t strspn (const char *, const char *);
char *strstr (const char *, const char *);

char *strtok (char *restrict, const char *restrict);

size_t strxfrm (char *restrict, const char *restrict, size_t);


int strcoll_l (const char *, const char *, locale_t);
char *strerror_l (int, locale_t);
size_t strxfrm_l (char *restrict, const char *restrict, size_t, locale_t);


char *strtok_r (char *restrict, const char *restrict, char **restrict);


int timingsafe_bcmp (const void *, const void *, size_t);
int timingsafe_memcmp (const void *, const void *, size_t);


void * memccpy (void *restrict, const void *restrict, int, size_t);
# 76 "/home/jins/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/string.h" 3
char *stpcpy (char *restrict, const char *restrict);
char *stpncpy (char *restrict, const char *restrict, size_t);






char *strdup (const char *) __attribute__((__malloc__)) __attribute__((__warn_unused_result__));

char *_strdup_r (struct _reent *, const char *);

char *strndup (const char *, size_t) __attribute__((__malloc__)) __attribute__((__warn_unused_result__));

char *_strndup_r (struct _reent *, const char *, size_t);
# 100 "/home/jins/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/string.h" 3
int strerror_r (int, char *, size_t)

             __asm__ ("" "__xpg_strerror_r")

  ;







char * _strerror_r (struct _reent *, int, int, int *);


size_t strlcat (char *, const char *, size_t);
size_t strlcpy (char *, const char *, size_t);


size_t strnlen (const char *, size_t);


char *strsep (char **, const char *);


char *strnstr(const char *, const char *, size_t) __attribute__((__pure__));



char *strlwr (char *);
char *strupr (char *);



char *strsignal (int __signo);
# 175 "/home/jins/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/string.h" 3
# 1 "/home/jins/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/string.h" 1 3
# 15 "/home/jins/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/string.h" 3
static __inline unsigned long __libc_detect_null(unsigned long w)
{
  unsigned long mask = 0x7f7f7f7f;
  if (sizeof (long) == 8)
    mask = ((mask << 16) << 16) | mask;
  return ~(((w & mask) + mask) | w | mask);
}
# 176 "/home/jins/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/string.h" 2 3


# 8 "/home/jins/bl_iot_sdk/components/bl602/bl602_std/bl602_std/Common/platform_print/bflb_platform.h" 2





# 12 "/home/jins/bl_iot_sdk/components/bl602/bl602_std/bl602_std/Common/platform_print/bflb_platform.h"
void * pvPortMalloc( size_t xWantedSize );
void* pvPortRealloc(void* ptr, size_t newsize);
void* pvPortCalloc(size_t numElements, size_t sizeOfElement);
void vPortFree( void *pv );






void bflb_platform_init(uint32_t baudrate);
void bflb_platform_deinit(void);
void bflb_platform_printf(char *fmt,...);
void bflb_platform_dump(const void *data,uint32_t len);
void bflb_platform_prints(char *data);
void bflb_platform_printx(uint32_t val);
void bflb_platform_printc(char c);
void bflb_platform_print_set(uint8_t logDisable);
int bflb_platform_get_random(uint8_t *data,uint32_t len);
int bflb_platform_get_input(uint8_t *data,uint32_t maxLen);

void bflb_platform_clear_time(void);
uint32_t bflb_platform_get_systick_int_cnt(void);
uint64_t bflb_platform_get_time_ms();
void bflb_platform_start_time(void);
void bflb_platform_stop_time(void);
void bflb_platform_set_alarm_time(uint64_t time);
void bflb_platform_init_time(void);
void bflb_platform_deinit_time(void);
void bflb_platform_delay_ms(uint32_t time);
uint32_t bflb_platform_get_log(uint8_t *data,uint32_t maxlen);
# 6 "/home/jins/bl_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_common.h" 2
# 22 "/home/jins/bl_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_common.h"
typedef enum
{
  SUCCESS = 0,
  ERROR = 1,
  TIMEOUT = 2,
}BL_Err_Type;




typedef enum
{
  DISABLE = 0,
  ENABLE = 1,
}BL_Fun_Type;




typedef enum
{
  RESET = 0,
  SET = 1,
}BL_Sts_Type;




typedef enum
{
  UNMASK = 0,
  MASK = 1
}BL_Mask_Type;
# 106 "/home/jins/bl_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_common.h"
typedef enum
{
  LOGIC_LO = 0,
  LOGIC_HI = !LOGIC_LO
}LogicalStatus;




typedef enum
{
  DEACTIVE = 0,
  ACTIVE = !DEACTIVE
}ActiveStatus;




typedef void (intCallback_Type)(void);







extern intCallback_Type ** intCbfArra[];
void Install_Int_Callback(IRQn_Type intPeriph, uint32_t intType, intCallback_Type * cbFun);

void ASM_Delay_Us(uint32_t core,uint32_t cnt);
void BL602_Delay_US(uint32_t cnt);
void BL602_Delay_MS(uint32_t cnt);
void *BL602_MemCpy(void *dst, const void *src, uint32_t n);
uint32_t *BL602_MemCpy4(uint32_t *dst, const uint32_t *src, uint32_t n);
void *BL602_MemCpy_Fast(void *pdst, const void *psrc, uint32_t n);
void* BL602_MemSet(void *s, uint8_t c, uint32_t n);
uint32_t *BL602_MemSet4(uint32_t *dst, const uint32_t val, uint32_t n);
int BL602_MemCmp(const void *s1, const void *s2, uint32_t n);
# 41 "/home/jins/bl_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_i2c.h" 2
# 57 "/home/jins/bl_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_i2c.h"
typedef enum {
    I2C0_ID = 0,
    I2C_ID_MAX,
}I2C_ID_Type;




typedef enum {
    I2C_WRITE = 0,
    I2C_READ,
}I2C_Direction_Type;




typedef enum {
    I2C_TRANS_END_INT,
    I2C_TX_FIFO_READY_INT,
    I2C_RX_FIFO_READY_INT,
    I2C_NACK_RECV_INT,
    I2C_ARB_LOST_INT,
    I2C_FIFO_ERR_INT,
    I2C_INT_ALL,
}I2C_INT_Type;




typedef struct {
    uint8_t len0;
    uint8_t len1;
    uint8_t len2;
    uint8_t len3;
}I2C_Start_Condition_Phase_Type;




typedef struct {
    uint8_t len0;
    uint8_t len1;
    uint8_t len2;
    uint8_t len3;
}I2C_Stop_Condition_Phase_Type;




typedef struct {
    uint8_t len0;
    uint8_t len1;
    uint8_t len2;
    uint8_t len3;
}I2C_Data_Phase_Type;




typedef struct {
    uint8_t slaveAddr;
    BL_Fun_Type stopEveryByte;
    uint8_t subAddrSize;
    uint32_t subAddr;
    uint16_t dataSize;
    uint8_t* data;
}I2C_Transfer_Cfg;
# 173 "/home/jins/bl_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_i2c.h"
void I2C_SendWord(I2C_ID_Type i2cNo, uint32_t data);
uint32_t I2C_RecieveWord(I2C_ID_Type i2cNo);
void I2C_Enable(I2C_ID_Type i2cNo);
void I2C_Disable(I2C_ID_Type i2cNo);
BL_Err_Type I2C_Reset(I2C_ID_Type i2cNo);
void I2C_SetPrd(I2C_ID_Type i2cNo, uint8_t phase);
void I2C_ClockSet(I2C_ID_Type i2cNo, uint32_t clk);
void I2C_SetSclSync(I2C_ID_Type i2cNo, uint8_t enable);
void I2C_Init(I2C_ID_Type i2cNo,I2C_Direction_Type direct,I2C_Transfer_Cfg *cfg);
BL_Sts_Type I2C_IsBusy(I2C_ID_Type i2cNo);
BL_Sts_Type I2C_TransferEndStatus(I2C_ID_Type i2cNo);
BL_Err_Type I2C_MasterSendBlocking(I2C_ID_Type i2cNo, I2C_Transfer_Cfg *cfg);
BL_Err_Type I2C_MasterReceiveBlocking(I2C_ID_Type i2cNo, I2C_Transfer_Cfg *cfg);
void I2C_IntMask(I2C_ID_Type i2cNo,I2C_INT_Type intType, BL_Mask_Type intMask);
# 41 "/home/jins/bl_iot_sdk/components/hal_drv/bl602_hal/hal_i2c.c" 2
# 1 "/home/jins/bl_iot_sdk/components/hal_drv/bl602_hal/bl_irq.h" 1
# 32 "/home/jins/bl_iot_sdk/components/hal_drv/bl602_hal/bl_irq.h"
void bl_irq_enable(unsigned int source);
void bl_irq_disable(unsigned int source);
typedef enum {
    BL_IRQ_EXCEPTION_TYPE_LOAD_MISALIGN,
    BL_IRQ_EXCEPTION_TYPE_STORE_MISALIGN,
    BL_IRQ_EXCEPTION_TYPE_ACCESS_ILLEGAL,
    BL_IRQ_EXCEPTION_TYPE_ILLEGAL_INSTRUCTION,
} BL_IRQ_EXCEPTION_TYPE_T;
void bl_irq_exception_trigger(BL_IRQ_EXCEPTION_TYPE_T type, void *ptr);

void bl_irq_init(void);

void bl_sec_aes_IRQHandler(void);
void bl_sec_sha_IRQHandler(void);
void bl_sec_pka_IRQHandler(void);
void bl_dma_IRQHandler(void);
void intc_irq(void);
void bl_irq_handler(void);
void bl_irq_register_with_ctx(int irqnum, void *handler, void *ctx);
void bl_irq_register(int irqnum, void *handler);
void bl_irq_unregister(int irqnum, void *handler);
void bl_irq_ctx_get(int irqnum, void **ctx);
# 42 "/home/jins/bl_iot_sdk/components/hal_drv/bl602_hal/hal_i2c.c" 2
# 1 "/home/jins/bl_iot_sdk/components/hal_drv/bl602_hal/hal_i2c.h" 1
# 43 "/home/jins/bl_iot_sdk/components/hal_drv/bl602_hal/hal_i2c.h"
int hal_i2c_init(int i2cx, int freq);
int hal_i2c_read_block(int address, char *data, int length, int subaddr_len, int subaddr);
int hal_i2c_write_block(int address, const char *data, int length, int subaddr_len, int subaddr);
int hal_i2c_write_no_block(int address, const char *data, int length, int subaddr_len, int subaddr);
int hal_i2c_read_no_block(int address, const char *data, int length, int subaddr_len, int subaddr);

int i2c_transfer_msgs_block(i2c_msg_t *pstmsg, int num, int support_ins);
void i2c_msgs_process(i2c_msg_t *pstmsg);
void i2c_insert_msgs_process(i2c_msg_t *pstmsg);
# 43 "/home/jins/bl_iot_sdk/components/hal_drv/bl602_hal/hal_i2c.c" 2
# 1 "/home/jins/bl_iot_sdk/components/stage/blog/blog.h" 1
# 35 "/home/jins/bl_iot_sdk/components/stage/blog/blog.h"
# 1 "/home/jins/bl_iot_sdk/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/8.3.0/include/stdbool.h" 1 3 4
# 36 "/home/jins/bl_iot_sdk/components/stage/blog/blog.h" 2





# 1 "/home/jins/bl_iot_sdk/components/utils/include/utils_log.h" 1
# 85 "/home/jins/bl_iot_sdk/components/utils/include/utils_log.h"
typedef enum LOG_BUF_OUT_DATA_TYPE {
    LOG_BUF_OUT_DATA_TYPE_HEX,
    LOG_BUF_OUT_DATA_TYPE_INT8,
    LOG_BUF_OUT_DATA_TYPE_UNT8,
} LOG_BUF_OUT_DATA_TYPE_T;
# 156 "/home/jins/bl_iot_sdk/components/utils/include/utils_log.h"
int log_buf_out(const char *file, int line, const void *inbuf, int len, LOG_BUF_OUT_DATA_TYPE_T type);

void bl_printk(const char *format, ...);
# 42 "/home/jins/bl_iot_sdk/components/stage/blog/blog.h" 2

# 1 "/home/jins/bl_iot_sdk/components/stage/blog/blog_type.h" 1
# 33 "/home/jins/bl_iot_sdk/components/stage/blog/blog_type.h"
typedef enum _blog_leve {
    BLOG_LEVEL_ALL = 0,
    BLOG_LEVEL_DEBUG,
    BLOG_LEVEL_INFO,
    BLOG_LEVEL_WARN,
    BLOG_LEVEL_ERROR,
    BLOG_LEVEL_ASSERT,
    BLOG_LEVEL_NEVER,
} blog_level_t;

typedef struct _blog_info {
    blog_level_t *level;
    char *name;
} blog_info_t;
# 44 "/home/jins/bl_iot_sdk/components/stage/blog/blog.h" 2
# 1 "/home/jins/bl_iot_sdk/components/stage/blog/blog_cfg.h" 1
# 45 "/home/jins/bl_iot_sdk/components/stage/blog/blog.h" 2
# 200 "/home/jins/bl_iot_sdk/components/stage/blog/blog.h"
void blog_init(void);

void blog_hexdump_out(const char *name, uint8_t width, uint8_t *buf, uint16_t size);
# 44 "/home/jins/bl_iot_sdk/components/hal_drv/bl602_hal/hal_i2c.c" 2

i2c_msg_t *gpstmsg;
SemaphoreHandle_t i2c_hd_handle = 
# 46 "/home/jins/bl_iot_sdk/components/hal_drv/bl602_hal/hal_i2c.c" 3 4
                                 ((void *)0)
# 46 "/home/jins/bl_iot_sdk/components/hal_drv/bl602_hal/hal_i2c.c"
                                     ;
SemaphoreHandle_t i2c_msgs_handle = 
# 47 "/home/jins/bl_iot_sdk/components/hal_drv/bl602_hal/hal_i2c.c" 3 4
                                   ((void *)0)
# 47 "/home/jins/bl_iot_sdk/components/hal_drv/bl602_hal/hal_i2c.c"
                                       ;
SemaphoreHandle_t i2c_transfer_handle = 
# 48 "/home/jins/bl_iot_sdk/components/hal_drv/bl602_hal/hal_i2c.c" 3 4
                                       ((void *)0)
# 48 "/home/jins/bl_iot_sdk/components/hal_drv/bl602_hal/hal_i2c.c"
                                           ;
SemaphoreHandle_t i2c_loop_handle = 
# 49 "/home/jins/bl_iot_sdk/components/hal_drv/bl602_hal/hal_i2c.c" 3 4
                                   ((void *)0)
# 49 "/home/jins/bl_iot_sdk/components/hal_drv/bl602_hal/hal_i2c.c"
                                       ;
SemaphoreHandle_t i2c_insert_handle = 
# 50 "/home/jins/bl_iot_sdk/components/hal_drv/bl602_hal/hal_i2c.c" 3 4
                                     ((void *)0)
# 50 "/home/jins/bl_iot_sdk/components/hal_drv/bl602_hal/hal_i2c.c"
                                         ;

static void i2c_callback(i2c_msg_t *pstmsg)
{
    BaseType_t xHigherPriorityTaskWoken;
    I2C_Disable(pstmsg->i2cx);
    I2C_IntMask(pstmsg->i2cx, I2C_INT_ALL, MASK);
    i2c_clear_status(pstmsg->i2cx);
    if (pstmsg->block == 1) {
        i2c_async_trigger(pstmsg, 2);
        if (pstmsg->direct == 0) {
            vPortFree(pstmsg->buf);
            vPortFree(pstmsg);
        }
    }
    xQueueGiveFromISR( ( QueueHandle_t ) ( i2c_hd_handle ), ( &xHigherPriorityTaskWoken ) );
    if( xHigherPriorityTaskWoken ) vTaskSwitchContext();
    if (pstmsg->block == 1) {
        xQueueGiveFromISR( ( QueueHandle_t ) ( i2c_transfer_handle ), ( &xHigherPriorityTaskWoken ) );
        if( xHigherPriorityTaskWoken ) vTaskSwitchContext();
    }
    return;
}

static void i2c_transferbytes(i2c_msg_t *pstmsg)
{
    if ((pstmsg->direct == 0) && (pstmsg->event = 1)) {
        if (pstmsg->idex < pstmsg->len) {
            do_write_data(pstmsg);
        } else if (pstmsg->idex == pstmsg->len) {
            I2C_IntMask(pstmsg->i2cx, I2C_TX_FIFO_READY_INT, MASK);
            return;
        } else {
        }
    } else if ((pstmsg->direct == 1) && (pstmsg->event = 3)){
        if (pstmsg->idex < pstmsg->len) {
             do_read_data(pstmsg);
        } else {
            I2C_IntMask(pstmsg->i2cx, I2C_RX_FIFO_READY_INT, MASK);
            return;
        }
    } else {
    }

    return;
}

static void i2c_interrupt_entry(void *ctx)
{
    uint32_t tmpval;
    i2c_msg_t *pstmsg;

    pstmsg = *((i2c_msg_t **)ctx);

    tmpval = (*((volatile uint32_t*)(((uint32_t)0x4000A300)+(0x4))));
    if(( ((tmpval)&(1U<<((2U)))) !=0 )){
        pstmsg->event = 3;
    } else if(( ((tmpval)&(1U<<((0U)))) !=0 )){
        pstmsg->event = 0;
        i2c_callback(pstmsg);
        return;
    } else if(( ((tmpval)&(1U<<((3U)))) !=0 )){
        pstmsg->event = 6;
        i2c_callback(pstmsg);
        return;
    } else if(( ((tmpval)&(1U<<((1U)))) !=0 )){
        pstmsg->event = 1;
    } else if(( ((tmpval)&(1U<<((4U)))) !=0 )){
        pstmsg->event = 5;
        i2c_callback(pstmsg);
        return;
    } else if(( ((tmpval)&(1U<<((5U)))) !=0 )){
        pstmsg->event = 4;
        i2c_callback(pstmsg);
        return;
    } else {
        ;
        pstmsg->event = 0xff;
        i2c_callback(pstmsg);
    }

    i2c_transferbytes(pstmsg);
    return;
}

int i2c_transfer_block(i2c_msg_t *pstmsg)
{
    xQueueSemaphoreTake( ( i2c_transfer_handle ), ( ( TickType_t ) 0xffffffffUL ) );
    xQueueSemaphoreTake( ( i2c_hd_handle ), ( ( TickType_t ) 0xffffffffUL ) );
    pstmsg->block = 0;
    gpstmsg = pstmsg;

    i2c_transfer_start(pstmsg);
    xQueueSemaphoreTake( ( i2c_hd_handle ), ( ( TickType_t ) 0xffffffffUL ) );
    if (pstmsg->event == 0) {
        ;
    } else {
        ;
    }

    xQueueGenericSend( ( QueueHandle_t ) ( i2c_hd_handle ), 
# 150 "/home/jins/bl_iot_sdk/components/hal_drv/bl602_hal/hal_i2c.c" 3 4
   ((void *)0)
# 150 "/home/jins/bl_iot_sdk/components/hal_drv/bl602_hal/hal_i2c.c"
   , ( ( TickType_t ) 0U ), ( ( BaseType_t ) 0 ) );
    xQueueGenericSend( ( QueueHandle_t ) ( i2c_transfer_handle ), 
# 151 "/home/jins/bl_iot_sdk/components/hal_drv/bl602_hal/hal_i2c.c" 3 4
   ((void *)0)
# 151 "/home/jins/bl_iot_sdk/components/hal_drv/bl602_hal/hal_i2c.c"
   , ( ( TickType_t ) 0U ), ( ( BaseType_t ) 0 ) );

    return pstmsg->event;
}

int i2c_transfer_no_block(i2c_msg_t *pstmsg)
{
    uint8_t *pbuf;
    i2c_msg_t *psttmp;
    xQueueSemaphoreTake( ( i2c_transfer_handle ), ( ( TickType_t ) 0xffffffffUL ) );
    xQueueSemaphoreTake( ( i2c_hd_handle ), ( ( TickType_t ) 0xffffffffUL ) );
    gpstmsg = pstmsg;
    psttmp = pvPortMalloc(sizeof(i2c_msg_t));

    if (psttmp == 
# 165 "/home/jins/bl_iot_sdk/components/hal_drv/bl602_hal/hal_i2c.c" 3 4
                 ((void *)0)
# 165 "/home/jins/bl_iot_sdk/components/hal_drv/bl602_hal/hal_i2c.c"
                     ) {
        ;
        return -1;
    }
    memcpy(psttmp, pstmsg, (sizeof(i2c_msg_t)));
    if (pstmsg->direct == 0) {
        pbuf = pvPortMalloc(pstmsg->len);
        if (pbuf == 
# 172 "/home/jins/bl_iot_sdk/components/hal_drv/bl602_hal/hal_i2c.c" 3 4
                   ((void *)0)
# 172 "/home/jins/bl_iot_sdk/components/hal_drv/bl602_hal/hal_i2c.c"
                       ) {
            ;
        }
        memcpy(pbuf , pstmsg->buf, pstmsg->len);
        psttmp->buf = pbuf;
    } else if (pstmsg->direct == 1) {
        psttmp->buf = pstmsg->buf;
    } else {
    }
    gpstmsg = psttmp;
    i2c_transfer_start(gpstmsg);
    return 0;
}

void i2c_msgs_process(i2c_msg_t *pstmsg)
{
    i2c_transfer_block(pstmsg);
    xQueueGenericSend( ( QueueHandle_t ) ( i2c_loop_handle ), 
# 189 "/home/jins/bl_iot_sdk/components/hal_drv/bl602_hal/hal_i2c.c" 3 4
   ((void *)0)
# 189 "/home/jins/bl_iot_sdk/components/hal_drv/bl602_hal/hal_i2c.c"
   , ( ( TickType_t ) 0U ), ( ( BaseType_t ) 0 ) );

    return;
}

void i2c_insert_msgs_process(i2c_msg_t *pstmsg)
{
    int i;
    int ret = 0;

    for (i = 0; i < pstmsg->ins_num; i++) {

        ret = i2c_transfer_block(pstmsg + i);
        if (ret != 0) {
            ;
            break;
        }
    }
    xQueueGenericSend( ( QueueHandle_t ) ( i2c_loop_handle ), 
# 207 "/home/jins/bl_iot_sdk/components/hal_drv/bl602_hal/hal_i2c.c" 3 4
   ((void *)0)
# 207 "/home/jins/bl_iot_sdk/components/hal_drv/bl602_hal/hal_i2c.c"
   , ( ( TickType_t ) 0U ), ( ( BaseType_t ) 0 ) );
    xQueueGenericSend( ( QueueHandle_t ) ( i2c_insert_handle ), 
# 208 "/home/jins/bl_iot_sdk/components/hal_drv/bl602_hal/hal_i2c.c" 3 4
   ((void *)0)
# 208 "/home/jins/bl_iot_sdk/components/hal_drv/bl602_hal/hal_i2c.c"
   , ( ( TickType_t ) 0U ), ( ( BaseType_t ) 0 ) );

    return;
}

static void i2c_msg_space_func(i2c_msg_t *pstmsg, int i)
{
    if (i == 0) {

    } else if (pstmsg[i - 1].direct != pstmsg[i].direct || pstmsg[i - 1].addr != pstmsg[i].addr) {

    } else {
    }
}

int i2c_transfer_msgs_block(i2c_msg_t *pstmsg, int num, int support_ins)
{
    int i;

    xQueueSemaphoreTake( ( i2c_msgs_handle ), ( ( TickType_t ) 0xffffffffUL ) );
    if (support_ins == 0) {
        xQueueSemaphoreTake( ( i2c_insert_handle ), ( ( TickType_t ) 0xffffffffUL ) );
    }
    for (i = 0; i < num; i++) {
        xQueueSemaphoreTake( ( i2c_loop_handle ), ( ( TickType_t ) 0xffffffffUL ) );
        if (i > 0 && (pstmsg + i - 1)->event != 0) {
            ;
            break;
        }
        i2c_msg_space_func(pstmsg, i);
        i2c_async_trigger(pstmsg + i, 0);
    }
    if ((pstmsg + i -1)->stop == 1) {

    }
    xQueueSemaphoreTake( ( i2c_loop_handle ), ( ( TickType_t ) 0xffffffffUL ) );
    xQueueGenericSend( ( QueueHandle_t ) ( i2c_loop_handle ), 
# 244 "/home/jins/bl_iot_sdk/components/hal_drv/bl602_hal/hal_i2c.c" 3 4
   ((void *)0)
# 244 "/home/jins/bl_iot_sdk/components/hal_drv/bl602_hal/hal_i2c.c"
   , ( ( TickType_t ) 0U ), ( ( BaseType_t ) 0 ) );
    if (support_ins == 0) {
        xQueueGenericSend( ( QueueHandle_t ) ( i2c_insert_handle ), 
# 246 "/home/jins/bl_iot_sdk/components/hal_drv/bl602_hal/hal_i2c.c" 3 4
       ((void *)0)
# 246 "/home/jins/bl_iot_sdk/components/hal_drv/bl602_hal/hal_i2c.c"
       , ( ( TickType_t ) 0U ), ( ( BaseType_t ) 0 ) );
    }
    xQueueGenericSend( ( QueueHandle_t ) ( i2c_msgs_handle ), 
# 248 "/home/jins/bl_iot_sdk/components/hal_drv/bl602_hal/hal_i2c.c" 3 4
   ((void *)0)
# 248 "/home/jins/bl_iot_sdk/components/hal_drv/bl602_hal/hal_i2c.c"
   , ( ( TickType_t ) 0U ), ( ( BaseType_t ) 0 ) );

    return (pstmsg + i - 1)->event;
}

int i2c_insert_transfer_msgs(i2c_msg_t *pstmsg, int num)
{
    xQueueSemaphoreTake( ( i2c_insert_handle ), ( ( TickType_t ) 0xffffffffUL ) );
    xQueueSemaphoreTake( ( i2c_loop_handle ), ( ( TickType_t ) 0xffffffffUL ) );
    pstmsg->ins_num = num;
    i2c_async_trigger(pstmsg, 1);
    xQueueSemaphoreTake( ( i2c_loop_handle ), ( ( TickType_t ) 0xffffffffUL ) );
    xQueueGenericSend( ( QueueHandle_t ) ( i2c_loop_handle ), 
# 260 "/home/jins/bl_iot_sdk/components/hal_drv/bl602_hal/hal_i2c.c" 3 4
   ((void *)0)
# 260 "/home/jins/bl_iot_sdk/components/hal_drv/bl602_hal/hal_i2c.c"
   , ( ( TickType_t ) 0U ), ( ( BaseType_t ) 0 ) );
    xQueueGenericSend( ( QueueHandle_t ) ( i2c_insert_handle ), 
# 261 "/home/jins/bl_iot_sdk/components/hal_drv/bl602_hal/hal_i2c.c" 3 4
   ((void *)0)
# 261 "/home/jins/bl_iot_sdk/components/hal_drv/bl602_hal/hal_i2c.c"
   , ( ( TickType_t ) 0U ), ( ( BaseType_t ) 0 ) );

    return 0;
}

int i2c_transfer_onemsg_no_block(i2c_msg_t *pstmsg)
{
    i2c_transfer_no_block(pstmsg);
    return 0;
}

int hal_i2c_init(int i2cx, int freq)
{
    i2c_gpio_init(i2cx);
    i2c_set_freq(freq, i2cx);
    I2C_Disable(i2cx);
    bl_irq_enable(I2C_IRQn);
    I2C_IntMask(i2cx, I2C_INT_ALL, MASK);

    i2c_hd_handle = xQueueGenericCreate( ( UBaseType_t ) 1, ( ( uint8_t ) 0U ), ( ( uint8_t ) 3U ) );
    i2c_msgs_handle = xQueueCreateMutex( ( ( uint8_t ) 1U ) );
    i2c_transfer_handle = xQueueGenericCreate( ( UBaseType_t ) 1, ( ( uint8_t ) 0U ), ( ( uint8_t ) 3U ) );
    i2c_loop_handle = xQueueGenericCreate( ( UBaseType_t ) 1, ( ( uint8_t ) 0U ), ( ( uint8_t ) 3U ) );
    i2c_insert_handle = xQueueGenericCreate( ( UBaseType_t ) 1, ( ( uint8_t ) 0U ), ( ( uint8_t ) 3U ) );
    if (i2c_hd_handle == 
# 285 "/home/jins/bl_iot_sdk/components/hal_drv/bl602_hal/hal_i2c.c" 3 4
                        ((void *)0) 
# 285 "/home/jins/bl_iot_sdk/components/hal_drv/bl602_hal/hal_i2c.c"
                             || i2c_msgs_handle == 
# 285 "/home/jins/bl_iot_sdk/components/hal_drv/bl602_hal/hal_i2c.c" 3 4
                                                   ((void *)0) 
# 285 "/home/jins/bl_iot_sdk/components/hal_drv/bl602_hal/hal_i2c.c"
                                                        || i2c_transfer_handle == 
# 285 "/home/jins/bl_iot_sdk/components/hal_drv/bl602_hal/hal_i2c.c" 3 4
                                                                                  ((void *)0) 
# 285 "/home/jins/bl_iot_sdk/components/hal_drv/bl602_hal/hal_i2c.c"
                                                                                       || i2c_loop_handle == 
# 285 "/home/jins/bl_iot_sdk/components/hal_drv/bl602_hal/hal_i2c.c" 3 4
                                                                                                             ((void *)0) 
# 285 "/home/jins/bl_iot_sdk/components/hal_drv/bl602_hal/hal_i2c.c"
                                                                                                                  || i2c_insert_handle == 
# 285 "/home/jins/bl_iot_sdk/components/hal_drv/bl602_hal/hal_i2c.c" 3 4
                                                                                                                                          ((void *)0)
# 285 "/home/jins/bl_iot_sdk/components/hal_drv/bl602_hal/hal_i2c.c"
                                                                                                                                              ) {
        ;
        return -1;
    }

    xQueueGenericSend( ( QueueHandle_t ) ( i2c_hd_handle ), 
# 290 "/home/jins/bl_iot_sdk/components/hal_drv/bl602_hal/hal_i2c.c" 3 4
   ((void *)0)
# 290 "/home/jins/bl_iot_sdk/components/hal_drv/bl602_hal/hal_i2c.c"
   , ( ( TickType_t ) 0U ), ( ( BaseType_t ) 0 ) );
    xQueueGenericSend( ( QueueHandle_t ) ( i2c_msgs_handle ), 
# 291 "/home/jins/bl_iot_sdk/components/hal_drv/bl602_hal/hal_i2c.c" 3 4
   ((void *)0)
# 291 "/home/jins/bl_iot_sdk/components/hal_drv/bl602_hal/hal_i2c.c"
   , ( ( TickType_t ) 0U ), ( ( BaseType_t ) 0 ) );
    xQueueGenericSend( ( QueueHandle_t ) ( i2c_transfer_handle ), 
# 292 "/home/jins/bl_iot_sdk/components/hal_drv/bl602_hal/hal_i2c.c" 3 4
   ((void *)0)
# 292 "/home/jins/bl_iot_sdk/components/hal_drv/bl602_hal/hal_i2c.c"
   , ( ( TickType_t ) 0U ), ( ( BaseType_t ) 0 ) );
    xQueueGenericSend( ( QueueHandle_t ) ( i2c_loop_handle ), 
# 293 "/home/jins/bl_iot_sdk/components/hal_drv/bl602_hal/hal_i2c.c" 3 4
   ((void *)0)
# 293 "/home/jins/bl_iot_sdk/components/hal_drv/bl602_hal/hal_i2c.c"
   , ( ( TickType_t ) 0U ), ( ( BaseType_t ) 0 ) );
    xQueueGenericSend( ( QueueHandle_t ) ( i2c_insert_handle ), 
# 294 "/home/jins/bl_iot_sdk/components/hal_drv/bl602_hal/hal_i2c.c" 3 4
   ((void *)0)
# 294 "/home/jins/bl_iot_sdk/components/hal_drv/bl602_hal/hal_i2c.c"
   , ( ( TickType_t ) 0U ), ( ( BaseType_t ) 0 ) );
    bl_irq_register_with_ctx(I2C_IRQn, i2c_interrupt_entry, &gpstmsg);

    return 0;
}

int hal_i2c_read_block(int address, char *data, int length, int subaddr_len, int subaddr)
{
    i2c_msg_t msg;
    int ret = 0;

    msg.addr = address;
    msg.buf = (uint8_t *)data;
    msg.len = length;
    msg.direct = 1;
    msg.block = 0;
    msg.idex = 0;
    msg.i2cx = 0;

    if (subaddr > 0) {
        msg.subflag = 1;
        msg.subaddr = subaddr;
        msg.sublen = subaddr_len;
    } else {
        msg.subflag = 0;
    }

    ret = i2c_transfer_msgs_block(&msg, 1, 0);

    return ret;
}

int hal_i2c_write_block(int address, const char *data, int length, int subaddr_len, int subaddr)
{
    i2c_msg_t msg;
    int ret = 0;

    msg.addr = address;
    msg.buf = (uint8_t *)data;
    msg.len = length;
    msg.direct = 0;
    msg.block = 0;
    msg.idex = 0;
    msg.i2cx = 0;

    if (subaddr > 0) {
        msg.subflag = 1;
        msg.subaddr = subaddr;
        msg.sublen = subaddr_len;
    } else {
        msg.subflag = 0;
    }

    ret = i2c_transfer_msgs_block(&msg, 1, 0);

    return ret;
}

int hal_i2c_write_no_block(int address, const char *data, int length, int subaddr_len, int subaddr)
{
    i2c_msg_t msg;

    msg.addr = address;
    msg.buf = (uint8_t *)data;
    msg.len = length;
    msg.direct = 0;
    msg.block = 1;
    msg.idex = 0;
    msg.i2cx = 0;

    if (subaddr > 0) {
        msg.subflag = 1;
        msg.subaddr = subaddr;
        msg.sublen = subaddr_len;
    } else {
        msg.subflag = 0;
    }

    i2c_transfer_onemsg_no_block(&msg);

    return 0;
}

int hal_i2c_read_no_block(int address, const char *data, int length, int subaddr_len, int subaddr)
{
    i2c_msg_t msg;

    msg.addr = address;
    msg.buf = (uint8_t *)data;
    msg.len = length;
    msg.direct = 1;
    msg.block = 1;
    msg.idex = 0;
    msg.i2cx = 0;

    if (subaddr > 0) {
        msg.subflag = 1;
        msg.subaddr = subaddr;
        msg.sublen = subaddr_len;
    } else {
        msg.subflag = 0;
    }

    i2c_transfer_onemsg_no_block(&msg);

    return 0;
}
